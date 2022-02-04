require_rel '../../../base_api_client'

module Hubspot
  module Discovery
    module Crm
      module Timeline
        class EventsApi
          def self.api_methods
            %i[
              create
              create_batch
              get_by_id
              get_detail_by_id
              get_render_by_id
            ].freeze
          end
  
          include Hubspot::Discovery::BaseApiClient
        end
      end
    end
  end
end
