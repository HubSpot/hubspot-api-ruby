require_rel '../../base_module_client'

module Hubspot
  module Discovery
    module Crm
      module Objects
        class Client
          def self.api_classes
            %i[
              associations
              basic
              batch
              gdpr
              search
            ].freeze
          end

          def self.api_modules
            %i[
              calls
              emails
              feedback_submissions
              meetings
              notes
              tasks
            ].freeze
          end
  
          include Hubspot::Discovery::BaseModuleClient
        end
      end
    end
  end
end
