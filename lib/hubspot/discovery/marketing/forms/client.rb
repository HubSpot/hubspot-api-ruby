require_rel '../../base_module_client'

module Hubspot
  module Discovery
    module Marketing
      module Forms
        class Client
          def self.api_classes
            %i[
              forms
            ].freeze
          end
  
          include Hubspot::Discovery::BaseModuleClient
        end
      end
    end
  end
end
