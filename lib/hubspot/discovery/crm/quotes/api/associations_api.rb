require_rel '../../../base_api_client'

module Hubspot
  module Discovery
    module Crm
      module Quotes
        class AssociationsApi
          def self.api_methods
            %i[
              get_all
            ].freeze
          end
  
          include Hubspot::Discovery::BaseApiClient
        end
      end
    end
  end
end
