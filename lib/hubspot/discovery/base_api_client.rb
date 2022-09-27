require_rel '../helpers/camel_case'

module Hubspot
  module Discovery
    module BaseApiClient
      attr_reader :base_params

      def initialize(params)
        @base_params = params
        define_methods
      end

      def api_methods
        api.methods.grep(/with_http_info/).map {|elem| elem.to_s.gsub('_with_http_info', '').to_sym }
      end

      def config
        @config ||= new_config
      end

      def api_client
        @api_client ||= Kernel.const_get("#{codegen_module_name}::ApiClient").new(config)
      end

      def api
        @api ||= Kernel.const_get(codegen_api_class).new(api_client)
      end

      def get_all(params = {})
        api.get_all(params)
      end

      private

      def new_config
        config = Kernel.const_get("#{self.class.name.gsub('Discovery::', '').gsub(/(.*)::.*/, '\1')}::Configuration").new
        config.access_token = base_params[:access_token] if base_params[:access_token]
        config.api_key['hapikey'] = base_params[:api_key] if base_params[:api_key]
        config.api_key['hapikey'] = base_params[:developer_api_key] if base_params[:developer_api_key]
        config
      end

      def codegen_api_class
        self.class.name.gsub('Discovery::', '')
      end

      def codegen_module_name
        codegen_api_class.gsub(/(.*)::.*/, '\1')
      end

      def call_api(api_method, params_to_pass)
        api.public_send(api_method, *params_to_pass)
      end

      def call_api_with_rescue(api_method, params_to_pass)
        error = Kernel.const_get("#{codegen_module_name}::ApiError")
        call_api(api_method, params_to_pass)
      rescue error => e
        yield(e)
      end

      def define_methods
        define_api_methods
      end
      
      def define_api_methods
        api_methods.each do |api_method|
          self.class.define_method(api_method) do |params = {}, &block|
            params_with_defaults = params
            params_with_defaults[:opts] ||= {}
            params_with_defaults[:opts][:auth_names] = if base_params[:access_token]
                                                         'oauth2' 
                                                       elsif base_params[:api_key]
                                                         'hapikey'
                                                       elsif base_params[:developer_api_key]
                                                         'developer_hapikey'
                                                       else
                                                         raise 'Unauthorized. Please, provide access_token, api_key or developer_api_key'
                                                       end

            signature_params = api.method(api_method).parameters

            signature_param_names = signature_params.map { |_, param| param }
            params_with_defaults.each do |param_name, param_value|
              params_with_defaults[:opts][param_name] = param_value if !signature_param_names.include?(param_name) && param_name != :body
            end

            params_to_pass = signature_params.map do |req, param|
              model_name = Hubspot::Helpers::CamelCase.new.format(param.to_s)
              Kernel.const_get("#{codegen_module_name}::#{model_name}").build_from_hash(params_with_defaults[:body])
            rescue NameError
              raise "Param #{param} is required for #{api.class}\##{api_method} method" if req == :req && params_with_defaults[param].nil?

              params_with_defaults[param]
            end

            return call_api_with_rescue(api_method, params_to_pass, &block) unless block.nil?
            call_api(api_method, params_to_pass)
          end
        end
      end
    end
  end
end
