module Services
  module Hubspot
    module Contacts
      class GetPage
        def initialize(limit: 10)
          @limit = limit
        end

        def call
          basic_api = ::Hubspot::Crm::Contacts::BasicApi.new
          results = basic_api.get_page(auth_names: 'oauth2', limit: @limit).results
          results = add_fullnames(results)
        end

        private

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
