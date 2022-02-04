require_rel '../../../base_api_client'

module Hubspot
  module Discovery
    module Crm
      module Products
        class SearchApi
          def self.api_methods
            %i[
              do_search
            ].freeze
          end
  
          include Hubspot::Discovery::BaseApiClient
        end
      end
    end
  end
end
