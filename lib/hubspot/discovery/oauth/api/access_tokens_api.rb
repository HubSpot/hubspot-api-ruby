require_rel '../../base_api_client'

module Hubspot
  module Discovery
    module OAuth
      class AccessTokensApi
        def self.api_methods
          %i[
            get_access_token
          ].freeze
        end

        include Hubspot::Discovery::BaseApiClient
      end
    end
  end
end
