module Services
  module Hubspot
    module Contacts
      class Search
        def initialize(email:)
          @email = email
        end

        def call
          search_api = ::Hubspot::Client::Crm::Objects::Api::SearchApi.new
          params = { body: search_request, auth_names: 'oauth2' }
          search_api.do_search('contacts', params).results
        end

        private

        def search_request
          @search_request ||= ::Hubspot::Client::Crm::Objects::Models::PublicObjectSearchRequest.new(
            filters: [
              ::Hubspot::Client::Crm::Objects::Models::Filter.new(property_name: 'email', operator: 'EQ', value: @email)
            ]
          )
        end
      end
    end
  end
end
