require_relative '../../base_module_client'

module Hubspot
  module Discovery
    module Files
      module Files
        class Client
          include Hubspot::Discovery::BaseModuleClient

          def api_classes
            %i[
              files
              folders
            ].freeze
          end
        end
      end
    end
  end
end
