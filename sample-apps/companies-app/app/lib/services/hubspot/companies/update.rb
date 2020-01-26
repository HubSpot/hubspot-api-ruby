module Services
  module Hubspot
    module Companies
      class Update
        def initialize(id, properties)
          @id = id
          @properties = properties
        end

        def call
          basic_api = ::Hubspot::Client::Crm::Companies::Api::BasicApi.new
          params = { auth_names: 'oauth2', body: company }
          basic_api.update(@id, params)
        end

        private

        def company
          ::Hubspot::Client::Crm::Companies::Models::SimplePublicObjectInput.new(
            properties: @properties
          )
        end
      end
    end
  end
end
