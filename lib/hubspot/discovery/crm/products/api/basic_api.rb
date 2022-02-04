require_rel '../../../base_api_client'

module Hubspot
  module Discovery
    module Crm
      module Products
        class BasicApi
          def self.api_methods
            %i[
              archive
              create
              get_by_id
              get_page
              update
            ].freeze
          end
  
          include Hubspot::Discovery::BaseApiClient
        end
      end
    end
  end
end
