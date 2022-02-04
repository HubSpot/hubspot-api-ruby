require_rel '../../../base_api_client'

module Hubspot
  module Discovery
    module Crm
      module Quotes
        class BatchApi
          def self.api_methods
            %i[
              read
            ].freeze
          end
  
          include Hubspot::Discovery::BaseApiClient
        end
      end
    end
  end
end
