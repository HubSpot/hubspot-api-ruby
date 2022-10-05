require_relative '../base_module_client'

module Hubspot
  module Discovery
    module Conversations
      class Client
        def self.api_modules
          %i[
            visitor_identification
          ].freeze
        end

        include Hubspot::Discovery::BaseModuleClient
      end
    end
  end
end
