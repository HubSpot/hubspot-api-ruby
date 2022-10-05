require_relative '../../base_module_client'

module Hubspot
  module Discovery
    module Files
      module Files
        class Client
          def self.api_classes
            %i[
              files
              folders
            ].freeze
          end

          include Hubspot::Discovery::BaseModuleClient
        end
      end
    end
  end
end
