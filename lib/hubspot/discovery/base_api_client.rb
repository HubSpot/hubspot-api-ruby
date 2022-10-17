require_relative '../helpers/camel_case'
require_relative '../helpers/path'

module Hubspot
  module Discovery
    module BaseApiClient
      attr_reader :base_params

      def initialize(params)
        @base_params = params
        define_methods
      end

      def api_methods
        api.methods.grep(/with_http_info/).inject([]) do |methods, method|
          methods << method
          methods << method.to_s.gsub('_with_http_info', '').to_sym
        end
      end

      def config
        @config ||= new_config
      end

      def api_client
        require_codegen "#{codegen_module_path}/api_client"
        require_api_error
        @api_client ||= Kernel.const_get( "#{codegen_module_name}::ApiClient").new(config)
      end

      def api
        class_name = codegen_api_path.gsub(/(.*)\/(.*)/, '\2')
        require_codegen codegen_api_path.gsub(class_name, "api/#{class_name}")
        require_api_models
        @api ||= Kernel.const_get(codegen_api_class).new(api_client)
      end

      def get_all(params = {})
        api.get_all(params)
      end

      private

      def new_config
        require_codegen "#{codegen_module_path}/configuration"
        config = Kernel.const_get("#{codegen_module_name}::Configuration").new
        config.access_token = base_params[:access_token] if base_params[:access_token]
        config.api_key['hapikey'] = base_params[:api_key] if base_params[:api_key]
        config.api_key['hapikey'] = base_params[:developer_api_key] if base_params[:developer_api_key]
        config
      end

      def require_codegen(path)
        Hubspot::Helpers::Path.new.require_with_codegen_mapping(path)
      end

      def require_api_models
        def (Kernel.const_get(codegen_module_name)).const_get(const)
          require 'hubspot/helpers/path'
          codegen_module_path = Hubspot::Helpers::Path.new.format(self.name).gsub('hubspot/', 'hubspot/codegen/')
          codegen_model = Hubspot::Helpers::Path.new.format(const)
          Hubspot::Helpers::Path.new.require_with_codegen_mapping("#{codegen_module_path}/models/#{codegen_model}")
          super
        rescue LoadError
          super
        end
      end

      def require_api_error
        require_codegen "#{codegen_module_path}/api_error"
      end

      def codegen_api_class
        self.class.name.gsub('Discovery::', '')
      end

      def codegen_module_name
        @codegen_module_name ||= codegen_api_class.gsub(/(.*)::.*/, '\1')
      end

      def codegen_api_path
        @codegen_api_path ||= Hubspot::Helpers::Path.new.format(self.class.name).gsub('discovery/', 'codegen/')
      end

      def codegen_module_path
        @codegen_module_path ||= codegen_api_path.gsub(/(.*)\/.*/, '\1')
      end

      def call_api(api_method, params_to_pass)
        api.public_send(api_method, *params_to_pass)
      end

      def call_api_with_rescue(api_method, params_to_pass)
        require_api_error
        error = Kernel.const_get("#{codegen_module_name}::ApiError")
        call_api(api_method, params_to_pass)
      rescue error => e
        yield(e)
      end

      def call_api_with_retry(api_method, params_to_pass, retry_config, &block)
        call_api_with_rescue(api_method, params_to_pass) do |error|
          opts = retry_config.detect{ |k,v| k === error.code }&.last
          retries = opts&.dig(:max_retries) || 5

          block.call(error) unless block.nil?

          response = error

          while retries > 0 && opts
            sleep opts[:seconds_delay] if opts[:seconds_delay]
            response = call_api_with_rescue(api_method, params_to_pass) do |e|
              block.call(e) unless block.nil?
              e
            end

            return response unless response.respond_to?(:code)

            opts = retry_config.detect{ |k,v| k === response.code }&.last
            retries -= 1
          end

          response
        end
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
              params_with_defaults[:opts][param_name] = param_value if !signature_param_names.include?(param_name) && param_name != :body && param_name != :retry
            end

            params_to_pass = signature_params.map do |req, param|
              if params_with_defaults[param].nil?
                model_name = Hubspot::Helpers::CamelCase.new.format(param.to_s)
                require_codegen "#{codegen_module_path}/models/#{param.to_s}"
                Kernel.const_get("#{codegen_module_name}::#{model_name}").build_from_hash(params_with_defaults[:body])
              else
                params_with_defaults[param]
              end
            rescue NameError
              raise "Param #{param} is required for #{api.class}\##{api_method} method" if req == :req
            end

            return call_api_with_retry(api_method, params_to_pass, params[:retry], &block) unless params[:retry].nil?
            return call_api_with_rescue(api_method, params_to_pass, &block) unless block.nil?
            call_api(api_method, params_to_pass)
          end
        end
      end
    end
  end
end
