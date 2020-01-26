module Services
  module Hubspot
    module Properties
      class GetAll
        def call
          core_api = ::Hubspot::Client::Crm::Properties::Api::CoreApi.new
          core_api.get_all('contacts', auth_names: 'oauth2').results
        end
      end
    end
  end
end
