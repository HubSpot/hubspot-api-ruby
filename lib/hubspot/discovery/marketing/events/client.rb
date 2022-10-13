require_relative '../../base_module_client'

module Hubspot
  module Discovery
    module Marketing
      module Events
        class Client
          include Hubspot::Discovery::BaseModuleClient

          def api_classes
            %i[
              basic
              batch
              search
              settings
              subscriber_state_changes
            ].freeze
          end
        end
      end
    end
  end
end
