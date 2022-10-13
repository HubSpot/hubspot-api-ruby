require_relative '../../base_module_client'

module Hubspot
  module Discovery
    module Automation
      module Actions
        class Client
          include Hubspot::Discovery::BaseModuleClient

          def api_classes 
            %i[
              callbacks
              definitions
              functions
              revisions
            ].freeze
          end
        end
      end
    end
  end
end
