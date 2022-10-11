require_relative '../base_module_client'

module Hubspot
  module Discovery
    module Conversations
      class Client
        include Hubspot::Discovery::BaseModuleClient

        def api_modules
          %i[
            visitor_identification
          ].freeze
        end
      end
    end
  end
end
