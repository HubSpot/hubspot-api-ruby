require_rel '../../../../base_api_client'

module Hubspot
  module Discovery
    module Crm
      module Extensions
        class UserAccountsApi
          def self.api_methods
            %i[
              archive
              replace
            ].freeze
          end
  
          include Hubspot::Discovery::BaseApiClient
        end
      end
    end
  end
end
