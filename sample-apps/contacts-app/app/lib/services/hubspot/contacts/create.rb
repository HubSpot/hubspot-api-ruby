module Services
  module Hubspot
    module Contacts
      class Create
        def initialize(properties)
          @properties = properties
        end

        def call
          create_api = ::Hubspot::Crm::Contacts::BasicApi.new
          create_api.create(body: contact_input, auth_names: 'oauth2')
        end

        private

        def contact_input
          @contact_input ||= ::Hubspot::Crm::Objects::SimplePublicObjectInput.new(properties: @properties)
        end
      end
    end
  end
end
