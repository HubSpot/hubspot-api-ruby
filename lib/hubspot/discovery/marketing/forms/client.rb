require_relative '../../base_module_client'

module Hubspot
  module Discovery
    module Marketing
      module Forms
        class Client
          include Hubspot::Discovery::BaseModuleClient

          def api_classes
            %i[
              forms
            ].freeze
          end
        end
      end
    end
  end
end
