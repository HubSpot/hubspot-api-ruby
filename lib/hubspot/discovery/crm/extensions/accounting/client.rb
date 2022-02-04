require_rel '../../../base_module_client'

module Hubspot
  module Discovery
    module Crm
      module Extensions
        module Accounting
          class Client
            def self.api_classes
              %i[
                callbacks
                invoice
                settings
                sync
                user_accounts
              ].freeze
            end
    
            include Hubspot::Discovery::BaseModuleClient
          end
        end
      end
    end
  end
end
