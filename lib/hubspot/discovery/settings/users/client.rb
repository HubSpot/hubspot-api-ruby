require_relative '../../base_module_client'

module Hubspot
  module Discovery
    module Settings
      module Users
        class Client
          def self.api_classes
            %i[
              roles
              teams
              users
            ].freeze
          end
  
          include Hubspot::Discovery::BaseModuleClient
        end
      end
    end
  end
end
