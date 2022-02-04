require_rel '../../base_api_client'

module Hubspot
  module Discovery
    module OAuth
      class TokensApi
        def self.api_methods
          %i[
            create_token
          ].freeze
        end

        include Hubspot::Discovery::BaseApiClient
      end
    end
  end
end
