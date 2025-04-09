require_relative '../../../base_module_client'

module Hubspot
  module Discovery
    module Crm
      module Extensions
        module Calling
          class Client
            include Hubspot::Discovery::BaseModuleClient

            def api_classes
              %i[
                channel_connection_settings
                recording_settings
                settings
              ].freeze
            end
          end
        end
      end
    end
  end
end
