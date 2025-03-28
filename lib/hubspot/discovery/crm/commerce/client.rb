require_relative '../../base_module_client'

module Hubspot
  module Discovery
    module Crm
      module Commerce
        class Client
          include Hubspot::Discovery::BaseModuleClient

          def api_modules
            %i[
              invoices
            ].freeze
          end
        end
      end
    end
  end
end
