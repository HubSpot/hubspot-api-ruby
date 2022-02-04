require_rel '../../base_api_client'

module Hubspot
  module Discovery
    module Webhooks
      class SettingsApi
        def self.api_methods
          %i[
            clear
            configure
            get_all
          ].freeze
        end

        include Hubspot::Discovery::BaseApiClient
      end
    end
  end
end
