require_rel '../../../base_api_client'

module Hubspot
  module Discovery
    module Automation
      module Actions
        class RevisionsApi
          def api_methods
            %i[
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
