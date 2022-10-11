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
                settings
              ].freeze
            end
          end
        end
      end
    end
  end
end
