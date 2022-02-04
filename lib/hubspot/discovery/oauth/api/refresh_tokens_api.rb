require_rel '../../base_api_client'

module Hubspot
  module Discovery
    module OAuth
      class RefreshTokensApi
        def self.api_methods
          %i[
            get_refresh_token
            archive_refresh_token
          ].freeze
        end

        include Hubspot::Discovery::BaseApiClient
      end
    end
  end
end
