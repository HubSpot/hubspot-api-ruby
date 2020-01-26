module Services
  module Hubspot
    module Companies
      class Search
        def initialize(domain)
          @domain = domain
        end

        def call
          search_api = ::Hubspot::Client::Crm::Companies::Api::SearchApi.new
          search_api.do_search(body: search_request, auth_names: 'oauth2').results
        end

        private

        def search_request
          filter = ::Hubspot::Client::Crm::Companies::Models::Filter.new(
            property_name: 'domain',
            operator: 'EQ',
            value: @domain
          )
          filter_group = ::Hubspot::Client::Crm::Companies::Models::FilterGroup.new(filters: [filter])
          ::Hubspot::Client::Crm::Companies::Models::PublicObjectSearchRequest.new(filter_groups: [filter_group])
        end
      end
    end
  end
end
