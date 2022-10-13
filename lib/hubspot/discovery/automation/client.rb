require_relative '../base_module_client'

module Hubspot
  module Discovery
    module Automation
      class Client
        include Hubspot::Discovery::BaseModuleClient

        def api_modules
          %i[
            actions
          ].freeze
        end
      end
    end
  end
end
