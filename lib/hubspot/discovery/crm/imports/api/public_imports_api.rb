require_rel '../../../base_api_client'

module Hubspot
  module Discovery
    module Crm
      module Imports
        class PublicImportsApi
          def self.api_methods
            %i[
              get_errors
            ].freeze
          end
  
          include Hubspot::Discovery::BaseApiClient
        end
      end
    end
  end
end
