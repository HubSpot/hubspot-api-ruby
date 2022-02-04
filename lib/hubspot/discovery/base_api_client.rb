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
              params_with_defaults[:opts][:auth_names] = base_params[:api_key].nil? ? 'oauth2' : 'hapikey'

              signature_params = api.method(api_method).parameters
              params_to_pass = signature_params.map do |req, param|
                p param
                raise "Param #{param} is required for #{api.class}\##{api_method} method" if req == :req && params_with_defaults[param].nil?
                params_with_defaults[param]
              end
  
              p api.class.to_s, api_method, params_to_pass
  
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
