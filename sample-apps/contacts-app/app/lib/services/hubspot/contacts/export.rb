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
          return @contacts if @contacts.present?

          after = nil
          @contacts = @max_pages.times.each_with_object([]) do |_, contacts|
            params = { auth_names: 'oauth2', limit: 10, after: after }
            contacts_page = basic_api.get_page('contact', params)
            contacts.concat(contacts_page.results)
            break contacts unless contacts_page.paging.present?

            after = contacts_page.paging._next.after
          end
        end

        def basic_api
          @basic_api ||= ::Hubspot::Client::Crm::Objects::Api::BasicApi.new
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
