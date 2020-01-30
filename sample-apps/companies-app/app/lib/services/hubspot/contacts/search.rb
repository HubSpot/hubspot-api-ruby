module Services
  module Hubspot
    module Contacts
      class Search
        def initialize(email:)
          @email = email
        end

        def call
          search_api = ::Hubspot::Client::Crm::Contacts::Api::SearchApi.new
          search_api.do_search(body: search_request, auth_names: 'oauth2').results
        end

        private

        def search_request
          filter = ::Hubspot::Client::Crm::Contacts::Models::Filter.new(
            property_name: 'email',
            operator: 'EQ',
            value: @email
          )
          filter_group = ::Hubspot::Client::Crm::Contacts::Models::FilterGroup.new(filters: [filter])
          ::Hubspot::Client::Crm::Contacts::Models::PublicObjectSearchRequest.new(filter_groups: [filter_group])
        end
      end
    end
  end
end
