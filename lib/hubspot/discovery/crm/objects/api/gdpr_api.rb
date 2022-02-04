require_rel '../../../base_api_client'

module Hubspot
  module Discovery
    module Crm
      module Objects
        class GAPRApi
          def self.api_methods
            %i[
              purge_by_email
              purge_by_id
            ].freeze
          end
  
          include Hubspot::Discovery::BaseApiClient
        end
      end
    end
  end
end
