module Services
  module Hubspot
    module Companies
      class Export
        PROPERTIES_TO_EXPORT = %w[name domain].freeze

        def initialize(max_pages: 10)
          @max_pages = max_pages
        end

        def call
          convert_to_csv(companies)
        end

        private

        def companies
          return @companies if @companies.present?

          after = nil
          @companies = @max_pages.times.each_with_object([]) do |_, companies|
            params = { auth_names: 'oauth2', limit: 10, after: after }
            companies_page = basic_api.get_page(params)
            companies.concat(companies_page.results)
            break companies unless companies_page.paging.present?

            after = companies_page.paging._next.after
          end
        end

        def basic_api
          @basic_api ||= ::Hubspot::Crm::Companies::BasicApi.new
        end

        def convert_to_csv(companies, properties: PROPERTIES_TO_EXPORT)
          CSV.generate(headers: true) do |csv|
            csv << [:id, *properties]

            companies.each do |company|
              csv << [company.id, *properties.map { |property| company.properties[property] }]
            end
            csv
          end
        end
      end
    end
  end
end
