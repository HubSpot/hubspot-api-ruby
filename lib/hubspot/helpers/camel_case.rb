module Hubspot
  module Helpers
    class CamelCase
      def format(string)
        case string
        when 'oauth'
          'OAuth'
        when 'gdpr_api'
          'GDPRApi'
        when 'public_smtp_tokens_api'
          'PublicSMTPTokensApi'
        else
          string.split('_').collect(&:capitalize).join
        end
      end
    end
  end
end
