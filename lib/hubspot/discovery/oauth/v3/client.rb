require_relative '../../base_module_client'

module Hubspot
  module Discovery
    module Oauth
      module V3
        class Client
          include Hubspot::Discovery::BaseModuleClient

          def api_classes
            %i[
              advanced
            ].freeze
          end
        end
      end
    end
  end
end
