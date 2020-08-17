module Services
  module Hubspot
    module Companies
      class Create
        def initialize(properties)
          @properties = properties
        end

        def call
          basic_api = ::Hubspot::Crm::Companies::BasicApi.new
          basic_api.create(company, auth_names: 'oauth2')
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
