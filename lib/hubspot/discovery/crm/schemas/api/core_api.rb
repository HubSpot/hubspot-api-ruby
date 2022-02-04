require_rel '../../../base_api_client'

module Hubspot
  module Discovery
    module Crm
      module Schemas
        class CoreApi
          def self.api_methods
            %i[
              archive
              archive_association
              create
              create_association
              get_all
              get_by_id
              update
            ].freeze
          end
  
          include Hubspot::Discovery::BaseApiClient
        end
      end
    end
  end
end
