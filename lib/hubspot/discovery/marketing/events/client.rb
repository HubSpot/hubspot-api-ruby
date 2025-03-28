require_relative '../../base_module_client'

module Hubspot
  module Discovery
    module Marketing
      module Events
        class Client
          include Hubspot::Discovery::BaseModuleClient

          def api_classes
            %i[
              add_event_attendees
              basic
              batch
              change_property
              identifiers
              list_associations
              retrieve_participant_state
              settings
              subscriber_state_changes
            ].freeze
          end
        end
      end
    end
  end
end
