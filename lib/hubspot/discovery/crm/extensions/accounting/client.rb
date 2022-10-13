require_relative '../../../base_module_client'

module Hubspot
  module Discovery
    module Crm
      module Extensions
        module Accounting
          class Client
            include Hubspot::Discovery::BaseModuleClient

            def api_classes
              %i[
                callbacks
                invoice
                settings
                sync
                user_accounts
              ].freeze
            end
          end
        end
      end
    end
  end
end
