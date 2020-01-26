module Services
  module Hubspot
    module Companies
      class GetAll
        def initialize(limit: 10)
          @limit = limit
        end

        def call
          basic_api = ::Hubspot::Client::Crm::Companies::Api::BasicApi.new
          results = basic_api.get_page(auth_names: 'oauth2', limit: @limit).results
        end
      end
    end
  end
end
