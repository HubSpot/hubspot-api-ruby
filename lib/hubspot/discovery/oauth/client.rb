require_relative '../base_module_client'

module Hubspot
  module Discovery
    module OAuth
      class Client
        include Hubspot::Discovery::BaseModuleClient

        def api_classes
          %i[
            access_tokens
            refresh_tokens
            tokens
          ].freeze
        end

        def discovery_module_path
          super.gsub('o_auth', 'oauth')
        end
      end
    end
  end
end
