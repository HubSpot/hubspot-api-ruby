require_relative '../../base_module_client'

module Hubspot
  module Discovery
    module Crm
      module Objects
        class Client
          include Hubspot::Discovery::BaseModuleClient

          def api_modules
            %i[
              calls
              emails
              feedback_submissions
              meetings
              notes
              tasks
            ].freeze
          end

          def api_classes
            %i[
              associations
              basic
              batch
              gdpr
              search
            ].freeze
          end
        end
      end
    end
  end
end
