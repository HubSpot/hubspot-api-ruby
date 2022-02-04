require_rel '../../base_module_client'

module Hubspot
  module Discovery
    module Crm
      module Owners
        class Client
          def self.api_classes
            %i[
              owners
            ].freeze
          end
  
          include Hubspot::Discovery::BaseModuleClient
        end
      end
    end
  end
end
