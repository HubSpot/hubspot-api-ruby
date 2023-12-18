require_relative '../../base_module_client'

module Hubspot
  module Discovery
    module Settings
      module BusinessUnits
        class Client
          include Hubspot::Discovery::BaseModuleClient

          def api_classes
            %i[
              business_unit
            ].freeze
          end
        end
      end
    end
  end
end
