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
              basic
              list_associations
              participant_state
              settings
              subscriber_state_changes
            ].freeze
          end
        end
      end
    end
  end
end
