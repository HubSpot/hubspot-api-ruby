module Services
  module Hubspot
    module Contacts
      class GetById
        def initialize(id)
          @id = id
        end

        def call
          basic_api = ::Hubspot::Crm::Objects::BasicApi.new
          basic_api.get_by_id(
            'contact', @id,
            auth_names: 'oauth2',
            properties: %w[email firstname lastname hubspot_owner_id]
          )
        end
      end
    end
  end
end
