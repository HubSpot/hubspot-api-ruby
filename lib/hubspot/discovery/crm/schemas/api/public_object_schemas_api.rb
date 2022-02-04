require_rel '../../../base_api_client'

module Hubspot
  module Discovery
    module Crm
      module Schemas
        class PublicObjectSchemasApi
          def self.api_methods
            %i[
              purge
            ].freeze
          end
  
          include Hubspot::Discovery::BaseApiClient
        end
      end
    end
  end
end
