require_relative '../../base_module_client'

module Hubspot
  module Discovery
    module Crm
      module Lists
        class Client
          include Hubspot::Discovery::BaseModuleClient

          def api_classes
            %i[
              folders
              lists
              mapping
              memberships
            ].freeze
          end
        end
      end
    end
  end
end
