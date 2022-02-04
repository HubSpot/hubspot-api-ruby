require_rel '../../base_api_client'

module Hubspot
  module Discovery
    module Events
      class EventsApi
        def self.api_methods
          %i[
            get_page
          ].freeze
        end

        include Hubspot::Discovery::BaseApiClient
      end
    end
  end
end
