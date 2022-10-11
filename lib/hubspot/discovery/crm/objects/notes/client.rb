require_relative '../../../base_module_client'

module Hubspot
  module Discovery
    module Crm
      module Objects
        module Notes
          class Client
            include Hubspot::Discovery::BaseModuleClient

            def api_classes
              %i[
                associations
                basic
                batch
                public_object
                search
              ].freeze
            end
          end
        end
      end
    end
  end
end
