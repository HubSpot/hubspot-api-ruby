module Services
  module Hubspot
    module Properties
      class GetAll
        def call
          core_api = ::Hubspot::Client::Crm::Properties::Api::CoreApi.new
          core_api.get_crm_v3_properties_object_type('contacts', auth_names: 'oauth2').results
        end
      end
    end
  end
end
