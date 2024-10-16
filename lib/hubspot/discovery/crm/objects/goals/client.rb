require_relative '../../../base_module_client'

module Hubspot
  module Discovery
    module Crm
      module Objects
        module Goals
          class Client
            include Hubspot::Discovery::BaseModuleClient

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
end
