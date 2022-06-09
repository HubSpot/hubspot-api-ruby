require_rel '../base_module_client'

module Hubspot
  module Discovery
    module Settings
      class Client
        def self.api_modules
          %i[
            users
          ].freeze
        end

        include Hubspot::Discovery::BaseModuleClient
      end
    end
  end
end
