module Services
  module Hubspot
    module Contacts
      class GetById
        def initialize(id)
          @id = id
        end

        def call
          basic_api = ::Hubspot::Client::Crm::Objects::Api::BasicApi.new
          basic_api.get_by_id('contact', @id, auth_names: 'oauth2')
        end
      end
    end
  end
end
