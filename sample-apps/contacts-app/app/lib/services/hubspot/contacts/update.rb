module Services
  module Hubspot
    module Contacts
      class Update
        def initialize(id, properties)
          @id = id
          @properties = properties
        end

        def call
          basic_api = ::Hubspot::Client::Crm::Objects::Api::BasicApi.new
          params = { auth_names: 'oauth2', body: contact_input }
          basic_api.update('contact', @id, params)
        end

        private

        def contact_input
          @contact_input ||= ::Hubspot::Client::Crm::Objects::Models::ContactInput.new(properties: @properties)
        end
      end
    end
  end
end
