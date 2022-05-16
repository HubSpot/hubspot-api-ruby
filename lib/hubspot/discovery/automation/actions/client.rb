require_rel '../../base_module_client'

module Hubspot
  module Discovery
    module Automation
      module Actions
        class Client
          def self.api_classes 
            %i[
              callbacks
              definitions
              functions
              revisions
            ].freeze
          end

          include Hubspot::Discovery::BaseModuleClient
        end
      end
    end
  end
end
