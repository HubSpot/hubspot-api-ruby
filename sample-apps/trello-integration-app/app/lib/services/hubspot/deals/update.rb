module Services
  module Hubspot
    module Deals
      class Update
        def initialize(id, properties:)
          @id = id
          @properties = properties
        end

        def call
          simple_public_object_input = ::Hubspot::Crm::Deals::SimplePublicObjectInput.new(properties: @properties)
          ::Hubspot::Crm::Deals::BasicApi.new.update(@id, simple_public_object_input, auth_names: 'oauth2')
        end
      end
    end
  end
end