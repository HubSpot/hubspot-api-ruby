require_relative '../base_module_client'

module Hubspot
  module Discovery
    module Marketing
      class Client
        include Hubspot::Discovery::BaseModuleClient

        def api_modules
          %i[
            events
            forms
            transactional
          ].freeze
        end
      end
    end
  end
end
