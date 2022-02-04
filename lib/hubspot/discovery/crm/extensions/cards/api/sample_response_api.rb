require_rel '../../../../base_api_client'

module Hubspot
  module Discovery
    module Crm
      module Extensions
        module Cards
          class CardsApi
            def self.api_methods
              %i[
                archive
                get_by_id
                replace
              ].freeze
            end
    
            include Hubspot::Discovery::BaseApiClient
          end
        end
      end
    end
  end
end
