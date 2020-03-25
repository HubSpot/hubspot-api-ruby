module Services
  module Hubspot
    module Contacts
      class Export
        PROPERTIES_TO_EXPORT = %w[email firstname lastname].freeze

        def initialize(max_pages: 10)
          @max_pages = max_pages
        end

        def call
          convert_to_csv(contacts)
        end

        private

        def contacts
          basic_api = ::Hubspot::Crm::Contacts::BasicApi.new
          basic_api.get_all(auth_names: 'oauth2')
        end

        def convert_to_csv(contacts, properties: PROPERTIES_TO_EXPORT)
          CSV.generate(headers: true) do |csv|
            csv << [:id, *properties]

            contacts.each do |contact|
              csv << [contact.id, *properties.map { |property| contact.properties[property] }]
            end
            csv
          end
        end
      end
    end
  end
end
