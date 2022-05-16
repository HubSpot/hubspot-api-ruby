require_rel '../base_module_client'

module Hubspot
  module Discovery
    module Automation
      class Client
        def self.api_modules
          %i[
            actions
          ].freeze
        end

        include Hubspot::Discovery::BaseModuleClient
      end
    end
  end
end
