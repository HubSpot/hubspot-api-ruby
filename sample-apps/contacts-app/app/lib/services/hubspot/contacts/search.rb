module Services
  module Hubspot
    module Contacts
      class Search
        def initialize(email:)
          @email = email
        end

        def call
          search_api = ::Hubspot::Client::Crm::Contacts::Api::SearchApi.new
          results = search_api.do_search(body: search_request, auth_names: 'oauth2').results
          results = add_fullnames(results)
          results
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

        def add_fullnames(contacts)
          contacts.each do |contact|
            fullname = [contact.properties['firstname'], contact.properties['lastname']].reject(&:empty?).join(' ')
            contact.properties['fullname'] = fullname
          end
        end
      end
    end
  end
end
