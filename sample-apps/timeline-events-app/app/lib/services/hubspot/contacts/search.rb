module Services
  module Hubspot
    module Contacts
      class Search
        def initialize(email:)
          @email = email
        end

        def call
          search_api = ::Hubspot::Crm::Contacts::SearchApi.new
          results = search_api.do_search(search_request, auth_names: 'oauth2').results
          results = add_fullnames(results)
          results
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
