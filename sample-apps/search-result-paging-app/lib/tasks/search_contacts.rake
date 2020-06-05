namespace :contacts do
  desc "Test searching mechanism"
  task search: :environment do
    def iterate_via_search_results(search_query:, process_contact_function:)
      config = ::Hubspot::Crm::Contacts::Configuration.new do |config|
        config.access_token = ENV['access_token']
      end
      api_client = ::Hubspot::Crm::Contacts::ApiClient.new(config)
      search_api = ::Hubspot::Crm::Contacts::SearchApi.new(api_client)

      after = 0

      loop do
        contacts = Services::Hubspot::Contacts::Search.new(
          search_query: search_query,
          after: after,
          limit: ENV['SEARCH_BATCH_SIZE'],
          search_api: search_api
        ).call

        break if contacts.count == 0

        contacts.each { |contact|  process_contact_function.call(contact) }

        after = contacts.last.id
      end
    end

    Rails.logger = Logger.new(STDOUT)

    iterate_via_search_results(
      search_query: ENV['SEARCH_QUERY'],
      process_contact_function: lambda { |contact| Rails.logger.info("Processing contact_id = #{contact.id}") }
    )
  end
end
