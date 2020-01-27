module Services
  module Hubspot
    module Contacts
      class Update
        def initialize(id, properties)
          @id = id
          @properties = properties
        end

        def call
          basic_api = ::Hubspot::Client::Crm::Contacts::Api::BasicApi.new
          params = { auth_names: 'oauth2', body: contact_input }
          basic_api.update(@id, params)
        end

        private

        def contact_input
          @contact_input ||= ::Hubspot::Client::Crm::Objects::Models::SimplePublicObjectInput.new(properties: @properties)
        end
      end
    end
  end
end
