module Services
  module Hubspot
    module Contacts
      class Create
        def initialize(properties)
          @properties = properties
        end

        def call
          create_api = ::Hubspot::Client::Crm::Objects::Api::CreateNativeObjectsApi.new
          params = { auth_names: 'oauth2', body: contact_input }
          create_api.post_crm_v3_objects_contacts(params)
        end

        private

        def contact_input
          @contact_input ||= ::Hubspot::Client::Crm::Objects::Models::ContactInput.new(properties: @properties)
        end
      end
    end
  end
end
