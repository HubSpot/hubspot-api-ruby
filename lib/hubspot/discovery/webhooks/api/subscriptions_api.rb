require_rel '../../base_api_client'

module Hubspot
  module Discovery
    module Webhooks
      class SettingsApi
        def self.api_methods
          %i[
            archive
            create
            get_all
            get_by_id
            update
            update_batch
          ].freeze
        end

        include Hubspot::Discovery::BaseApiClient
      end
    end
  end
end
