module Services
  module Hubspot
    module Contacts
      class Search
        def initialize(after:, limit:, search_query:, search_api: nil)
          @after = after
          @limit = limit
          @search_query = search_query
          @search_api = search_api.nil? ? ::Hubspot::Crm::Contacts::SearchApi.new : search_api
        end

        def call
          @search_api.do_search(body: search_request, auth_names: 'oauth2').results
        end

        private

        def search_request
          filter = ::Hubspot::Crm::Contacts::Filter.new(
            property_name: 'hs_object_id',
            operator: 'GT',
            value: @after
          )
          filter_group = ::Hubspot::Crm::Contacts::FilterGroup.new(filters: [filter])
          ::Hubspot::Crm::Contacts::PublicObjectSearchRequest.new(
            query: @search_query,
            limit: @limit,
            filter_groups: [filter_group],
            sorts: [{'propertyName' => 'hs_object_id', 'direction' => 'ASCENDING'}]
          )
        end
      end
    end
  end
end
