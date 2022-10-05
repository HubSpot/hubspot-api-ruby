require_relative '../base_module_client'

module Hubspot
  module Discovery
    module OAuth
      class Client
        def self.api_classes
          %i[
            access_tokens
            refresh_tokens
            tokens
          ].freeze
        end

        include Hubspot::Discovery::BaseModuleClient
      end
    end
  end
end
