require_relative '../base_module_client'

module Hubspot
  module Discovery
    module Files
      class Client
        def self.api_modules
          %i[
            files
          ].freeze
        end

        include Hubspot::Discovery::BaseModuleClient
      end
    end
  end
end
