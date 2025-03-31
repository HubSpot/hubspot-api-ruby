require_relative '../../base_module_client'

module Hubspot
  module Discovery
    module Crm
      module Exports
        class Client
          include Hubspot::Discovery::BaseModuleClient

          def api_classes 
            %i[
              public_exports
            ].freeze
          end
        end
      end
    end
  end
end
