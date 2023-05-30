module Hubspot
  module Helpers
    class CamelCase
      def format(string)
        if string == 'oauth'
          'OAuth'
        else
          string.split('_').collect(&:capitalize).join
        end
      end
    end
  end
end
