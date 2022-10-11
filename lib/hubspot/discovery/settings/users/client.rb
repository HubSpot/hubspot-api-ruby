require_relative '../../base_module_client'

module Hubspot
  module Discovery
    module Settings
      module Users
        class Client
          include Hubspot::Discovery::BaseModuleClient

          def api_classes
            %i[
              roles
              teams
              users
            ].freeze
          end
        end
      end
    end
  end
end
