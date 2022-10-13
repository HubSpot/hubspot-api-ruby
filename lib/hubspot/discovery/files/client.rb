require_relative '../base_module_client'

module Hubspot
  module Discovery
    module Files
      class Client
        include Hubspot::Discovery::BaseModuleClient

        def api_modules
          %i[
            files
          ].freeze
        end
      end
    end
  end
end
