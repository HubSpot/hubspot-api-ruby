require_relative '../../base_module_client'

module Hubspot
  module Discovery
    module Crm
      module Extensions
        class Client
          def self.api_modules
            %i[
              accounting
              calling
              cards
              videoconferencing
            ].freeze
          end
  
          include Hubspot::Discovery::BaseModuleClient
        end
      end
    end
  end
end
