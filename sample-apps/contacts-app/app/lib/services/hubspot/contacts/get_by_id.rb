module Services
  module Hubspot
    module Contacts
      class GetById
        def initialize(id)
          @id = id
        end

        def call
          basic_api = ::Hubspot::Client::Crm::Objects::Api::BasicApi.new
          basic_api.get_by_id(
            'contact', @id,
            auth_names: 'oauth2',
            properties: properties_to_display
          )
        end

        private

        def properties_to_display
          properties = Services::Hubspot::Properties::GetAll.new.call
          properties.filter! { |p| p.type == 'string' && !p.modification_metadata.read_only_value }
          properties.map(&:name) + %w[hubspot_owner_id]
        end
      end
    end
  end
end
