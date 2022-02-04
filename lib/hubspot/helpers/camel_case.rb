module Hubspot
  module Helpers
    class CamelCase
      def format(string)
        string.split('_').collect(&:capitalize).join
      end
    end
  end
end
