require_relative '../helpers/camel_case'
require_relative '../helpers/path'

module Hubspot
  module Discovery
    module BaseModuleClient
      attr_reader :params

      def initialize(params)
        @params = params
        define_methods
      end
        
      def base_module
        self.class.name.gsub(/(.*)::.*/, '\1')
      end
  
      def api_modules
        []
      end
  
      def api_classes
        []
      end

      private
  
      def define_methods
        define_modules_methods
        define_classes_methods
      end
  
      def define_modules_methods
        api_modules.each do |api_module|
          self.class.define_method(api_module) do
            require_with_mapping "#{discovery_module_path}/#{__method__.to_s}/client"
            class_name = "#{base_module}::#{Hubspot::Helpers::CamelCase.new.format(__method__.to_s)}::Client"
            Kernel.const_get(class_name).new(params)
          end
        end
      end
        
      def define_classes_methods
        api_classes.each do |api_class|
          self.class.define_method("#{api_class}_api") do
            require_with_mapping "#{discovery_module_path}/api/#{__method__.to_s}"
            class_name = "#{base_module}::#{Hubspot::Helpers::CamelCase.new.format(__method__.to_s)}"
            Kernel.const_get(class_name).new(params)
          end
        end
      end

      def discovery_module_path
        @discovery_module_path ||= Hubspot::Helpers::Path.new.format(base_module)
      end

      def require_with_mapping(path)
        Hubspot::Helpers::Path.new.require_with_mapping(path)
      end
    end
  end
end
