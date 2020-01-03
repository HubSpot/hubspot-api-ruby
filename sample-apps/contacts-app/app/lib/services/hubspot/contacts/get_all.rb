module Services
  module Hubspot
    module Contacts
      class GetAll
        def initialize(limit: 10)
          @limit = limit
        end

        def call
          basic_api = ::Hubspot::Client::Crm::Objects::Api::BasicApi.new
          basic_api.get_page('contact', auth_names: 'oauth2', limit: @limit).results
        end
      end
    end
  end
end
