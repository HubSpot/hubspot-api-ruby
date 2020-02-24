namespace :retry_middleware do
  desc "Test retry middleware"
  task test: :environment do
    config = ::Hubspot::Client::Crm::Contacts::Configuration.new do |config|
      config.access_token = ENV['access_token']
      config.error_handler = {
        429 => {
          max_retries: 2,
          seconds_delay: 10,
          retry_block: -> () { puts 'API returned 429 Status Code. Sleeping...' }
        },
      }
    end
    api_client = ::Hubspot::Client::Crm::Contacts::ApiClient.new(config)
    batch_api = ::Hubspot::Client::Crm::Contacts::Api::BatchApi.new(api_client)

    contacts = (1..3).map do |i|
      ::Hubspot::Client::Crm::Contacts::Models::SimplePublicObjectInput.new(
        properties: { email: "retry_middleware_app#{i}@hubspot.com" }
      )
    end

    Parallel.map((1..10).to_a, in_processes: 10) do |process|
      loop do
        contacts_object = ::Hubspot::Client::Crm::Contacts::Models::BatchInputSimplePublicObjectInput.new(
          inputs: contacts
        )
        response = batch_api.create_batch(body: contacts_object, auth_names: 'oauth2')
        ids_object = ::Hubspot::Client::Crm::Contacts::Models::BatchInputSimplePublicObjectId.new(
          inputs: response.results.map(&:id)
        )
        batch_api.archive_batch(body: ids_object , auth_names: 'oauth2')
        puts "##{process} :: #{Time.current} :: Created and deleted batch of contacts."
      end
    end
  end
end
