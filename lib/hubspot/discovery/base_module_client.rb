require_relative '../helpers/camel_case'

module Hubspot
  module Discovery
    module BaseModuleClient
      module ClassMethods
        def base_module
          modules = name.split('::')
          modules.pop
          modules.join('::')
        end
  
        def api_modules
          []
        end
  
        def api_classes
          []
        end
  
        def define_methods
          define_modules_methods
          define_classes_methods
        end
  
        def define_modules_methods
          api_modules.each do |api_module|
            define_method(api_module) do 
              Kernel.const_get("#{self.class.base_module}::#{Hubspot::Helpers::CamelCase.new.format(__method__.to_s)}::Client").new(params)
            end
          end
        end
        
        def define_classes_methods
          api_classes.each do |api_class|
            define_method("#{api_class}_api") do
              Kernel.const_get("#{self.class.base_module}::#{Hubspot::Helpers::CamelCase.new.format(__method__.to_s)}").new(params)
            end
          end
        end
      end

      attr_reader :params

      def initialize(params)
        @params = params
      end

      def self.included(base)
        base.extend(ClassMethods)
        base.class_eval { define_methods }
      end
    end
  end
end
