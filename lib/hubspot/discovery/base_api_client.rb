module Hubspot
  module Discovery
    module BaseApiClient
      module ClassMethods
        def codegen_api_class
          name.gsub('Discovery::', '')
        end
  
        def api_methods
          []
        end
  
        def define_methods
          define_api_methods
        end
        
        def define_api_methods
          api_methods.each do |api_method|
            define_method(api_method) do |params = {}|
              api = Kernel.const_get(self.class.codegen_api_class).new
  
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
              params_to_pass = signature_params.map do |req, param|
                raise "Param #{param} is required for #{api.class}\##{api_method} method" if req == :req && params_with_defaults[param].nil?
                params_with_defaults[param]
              end
  
              api.public_send(api_method, *params_to_pass)
            end
          end
        end
      end

      attr_reader :base_params

      def initialize(params)
        @base_params = params
      end

      def self.included(base)
        base.extend(ClassMethods)
        base.class_eval { define_methods }
      end
    end
  end
end
