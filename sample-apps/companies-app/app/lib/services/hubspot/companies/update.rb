module Services
  module Hubspot
    module Companies
      class Update
        def initialize(id, properties)
          @id = id
          @properties = properties
        end

        def call
          basic_api = ::Hubspot::Crm::Companies::BasicApi.new
          params = { auth_names: 'oauth2', body: company }
          basic_api.update(@id, params)
        end

        private

        def company
          ::Hubspot::Crm::Companies::SimplePublicObjectInput.new(
            properties: @properties
          )
        end
      end
    end
  end
end
