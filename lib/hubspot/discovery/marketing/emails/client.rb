require_relative '../../base_module_client'

module Hubspot
  module Discovery
    module Marketing
      module Emails
        class Client
          include Hubspot::Discovery::BaseModuleClient

          def api_classes
            %i[
              marketing_emails
              statistics
            ].freeze
          end
        end
      end
    end
  end
end
