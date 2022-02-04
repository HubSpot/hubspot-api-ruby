require_rel '../../../base_api_client'

module Hubspot
  module Discovery
    module Crm
      module Imports
        class CoreApi
          def self.api_methods
            %i[
              cancel
              create
              get_by_id
              get_page
            ].freeze
          end
  
          include Hubspot::Discovery::BaseApiClient
        end
      end
    end
  end
end
