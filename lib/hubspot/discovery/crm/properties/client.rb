require_relative '../../base_module_client'

module Hubspot
  module Discovery
    module Crm
      module Properties
        class Client
          include Hubspot::Discovery::BaseModuleClient

          def api_classes
            %i[
              batch
              core
              groups
            ].freeze
          end
        end
      end
    end
  end
end
