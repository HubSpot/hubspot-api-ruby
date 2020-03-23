module Services
  module Hubspot
    module Contacts
      class Search
        def initialize(email:)
          @email = email
        end

        def call
          search_api = ::Hubspot::Crm::Contacts::SearchApi.new
          search_api.do_search(body: search_request, auth_names: 'oauth2').results
        end

        private

        def search_request
          filter = ::Hubspot::Crm::Contacts::Filter.new(
            property_name: 'email',
            operator: 'EQ',
            value: @email
          )
          filter_group = ::Hubspot::Crm::Contacts::FilterGroup.new(filters: [filter])
          ::Hubspot::Crm::Contacts::PublicObjectSearchRequest.new(filter_groups: [filter_group])
        end
      end
    end
  end
end
