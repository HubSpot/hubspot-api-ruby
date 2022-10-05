require_relative '../../base_module_client'

module Hubspot
  module Discovery
    module Crm
      module Associations
        class Client
          def self.api_classes 
            %i[
              batch
              types
            ].freeze
          end

          include Hubspot::Discovery::BaseModuleClient
        end
      end
    end
  end
end
