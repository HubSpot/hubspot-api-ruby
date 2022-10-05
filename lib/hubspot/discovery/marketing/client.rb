require_relative '../base_module_client'

module Hubspot
  module Discovery
    module Marketing
      class Client
        def self.api_modules
          %i[
            events
            forms
            transactional
          ].freeze
        end

        include Hubspot::Discovery::BaseModuleClient
      end
    end
  end
end
