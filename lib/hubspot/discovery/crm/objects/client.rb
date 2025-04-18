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
              communications
              deal_splits
              emails
              feedback_submissions
              goals
              leads
              meetings
              notes
              postal_mail
              tasks
              taxes
            ].freeze
          end

          def api_classes
            %i[
              basic
              batch
              search
            ].freeze
          end
        end
      end
    end
  end
end
