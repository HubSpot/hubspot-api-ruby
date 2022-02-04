require_rel '../../../../base_api_client'

module Hubspot
  module Discovery
    module Crm
      module Extensions
        class SyncApi
          def self.api_methods
            %i[
              create_contact
              create_product
            ].freeze
          end
  
          include Hubspot::Discovery::BaseApiClient
        end
      end
    end
  end
end
