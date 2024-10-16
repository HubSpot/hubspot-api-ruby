require_relative '../../base_module_client'

module Hubspot
  module Discovery
    module Crm
      module Schemas
        class Client
          include Hubspot::Discovery::BaseModuleClient

          def api_classes
            %i[
              core
            ].freeze
          end
        end
      end
    end
  end
end
