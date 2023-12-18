require_relative '../base_module_client'

module Hubspot
  module Discovery
    module Settings
      class Client
        include Hubspot::Discovery::BaseModuleClient

        def api_modules
          %i[
            business_units
            users
          ].freeze
        end
      end
    end
  end
end
