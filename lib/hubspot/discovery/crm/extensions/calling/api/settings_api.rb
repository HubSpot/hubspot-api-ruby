require_rel '../../../../base_api_client'

module Hubspot
  module Discovery
    module Crm
      module Extensions
        module Calling
          class SettingsApi
            def self.api_methods
              %i[
                archive
                create
                get_by_id
                update
              ].freeze
            end
    
            include Hubspot::Discovery::BaseApiClient
          end
        end
      end
    end
  end
end
