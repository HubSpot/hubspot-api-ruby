module Services
  module Hubspot
    module Contacts
      class GetById
        def initialize(id)
          @id = id
        end

        def call
          basic_api = ::Hubspot::Crm::Contacts::BasicApi.new
          basic_api.get_by_id(
            @id,
            auth_names: 'oauth2',
            properties: %w[email firstname lastname hubspot_owner_id]
          )
        end
      end
    end
  end
end
