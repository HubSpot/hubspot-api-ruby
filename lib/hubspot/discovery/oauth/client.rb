require_relative '../base_module_client'

module Hubspot
  module Discovery
    module Oauth
      class Client
        include Hubspot::Discovery::BaseModuleClient

        def api_classes
          %i[
            access_tokens
            refresh_tokens
            tokens
          ].freeze
        end
      end
    end
  end
end
