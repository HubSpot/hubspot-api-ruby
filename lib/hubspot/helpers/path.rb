require_relative 'snake_case'

module Hubspot
  module Helpers
    class Path
      def format(module_name)
        Hubspot::Helpers::SnakeCase.new.format(module_name.to_s)
      end

      def require_with_mapping(path)
        require path
      end

      def require_with_codegen_mapping(path)
        require path
      end
    end
  end
end
