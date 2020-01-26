module Services
  module Hubspot
    module Owners
      class GetAll
        def call
          default_api = ::Hubspot::Client::Crm::Owners::Api::DefaultApi.new
          default_api.get_page(auth_names: 'oauth2').results
        end
      end
    end
  end
end
