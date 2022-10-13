require_relative '../../base_module_client'

module Hubspot
  module Discovery
    module Crm
      module Extensions
        class Client
          include Hubspot::Discovery::BaseModuleClient

          def api_modules
            %i[
              accounting
              calling
              cards
              videoconferencing
            ].freeze
          end
        end
      end
    end
  end
end
