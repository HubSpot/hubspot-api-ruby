require_rel '../../../base_api_client'

module Hubspot
  module Discovery
    module Marketing
      module Transactional
        class PublicSmtpTokensApi
          def self.api_methods
            %i[
              archive_token
              get_token_by_id
              get_tokens_page
              create_token
              reset_password
            ].freeze
          end
  
          include Hubspot::Discovery::BaseApiClient
        end
      end
    end
  end
end
