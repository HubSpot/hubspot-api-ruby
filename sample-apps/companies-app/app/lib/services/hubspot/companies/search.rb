module Services
  module Hubspot
    module Companies
      class Search
        def initialize(domain)
          @domain = domain
        end

        def call
          search_api = ::Hubspot::Crm::Companies::SearchApi.new
          search_api.do_search(search_request, auth_names: 'oauth2').results
        end

        private

        def search_request
          filter = ::Hubspot::Crm::Companies::Filter.new(
            property_name: 'domain',
            operator: 'EQ',
            value: @domain
          )
          filter_group = ::Hubspot::Crm::Companies::FilterGroup.new(filters: [filter])
          ::Hubspot::Crm::Companies::PublicObjectSearchRequest.new(filter_groups: [filter_group])
        end
      end
    end
  end
end
