require_rel '../../../base_module_client'

module Hubspot
  module Discovery
    module Crm
      module Extensions
        module Calling
          class Client
            def self.api_classes
              %i[
                settings
              ].freeze
            end
    
            include Hubspot::Discovery::BaseModuleClient
          end
        end
      end
    end
  end
end
