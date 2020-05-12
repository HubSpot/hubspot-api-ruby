module Services
  module Hubspot
    module Imports
      class GetPage
        def initialize(limit: 10)
          @limit = limit
        end

        def call
          basic_api = ::Hubspot::Crm::Imports::CoreApi.new
          basic_api.get_page(auth_names: 'oauth2', limit: @limit).results
        end
      end
    end
  end
end
