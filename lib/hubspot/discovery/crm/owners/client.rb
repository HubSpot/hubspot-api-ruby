require_relative '../../base_module_client'

module Hubspot
  module Discovery
    module Crm
      module Owners
        class Client
          include Hubspot::Discovery::BaseModuleClient

          def api_classes
            %i[
              owners
            ].freeze
          end
        end
      end
    end
  end
end
