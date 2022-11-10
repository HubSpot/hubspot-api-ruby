require_relative '../../base_module_client'

module Hubspot
  module Discovery
    module Marketing
      module Events
        class Client
          include Hubspot::Discovery::BaseModuleClient

          def api_classes
            %i[
              attendance_subscriber_state_changes
              marketing_events_external
              settings_external
            ].freeze
          end
        end
      end
    end
  end
end
