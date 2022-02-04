require_rel '../../../base_api_client'

module Hubspot
  module Discovery
    module Crm
      module Properties
        class GroupsApi
          def self.api_methods
            %i[
              archive
              create
              get_all
              get_by_name
              update
            ].freeze
          end
  
          include Hubspot::Discovery::BaseApiClient
        end
      end
    end
  end
end
