module Services
  module Hubspot
    module Contacts
      class Update
        def initialize(id, properties)
          @id = id
          @properties = properties
        end

        def call
          basic_api = ::Hubspot::Crm::Contacts::BasicApi.new
          basic_api.update(@id, contact_input, auth_names: 'oauth2')
        end

        private

        def contact_input
          @contact_input ||= ::Hubspot::Crm::Contacts::SimplePublicObjectInput.new(properties: @properties)
        end
      end
    end
  end
end
