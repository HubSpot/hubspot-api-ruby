require_rel '../../../base_api_client'

module Hubspot
  module Discovery
    module Crm
      module Contacts
        class AssociationsApi
          def self.api_methods
            %i[
              archive
              create
              get_all
            ].freeze
          end

          include Hubspot::Discovery::BaseApiClient
        end
      end
    end
  end
end
