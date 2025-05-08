module Hubspot
  module Helpers
    class CamelCase
      def format(string)
        case string
        when 'public_smtp_tokens_api'
          'PublicSMTPTokensApi'
        else
          string.split('_').collect(&:capitalize).join
        end
      end
    end
  end
end
