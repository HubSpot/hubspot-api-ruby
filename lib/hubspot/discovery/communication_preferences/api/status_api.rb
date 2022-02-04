require_rel '../../base_api_client'

module Hubspot
  module Discovery
    module CommunicationPreferences
      class StatusApi
        def api_methods
          %i[
            get_email_status
            subscribe
            unsubscribe
          ].freeze
        end
      
        include Hubspot::Discovery::BaseApiClient
      end
    end
  end
end
