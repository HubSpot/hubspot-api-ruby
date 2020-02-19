module Services
  module Hubspot
    module Contacts
      class CreateBatch
        def initialize(emails, access_token)
          @emails = emails
          @access_token = access_token
        end

        def call
          contacts_object = ::Hubspot::Client::Crm::Contacts::Models::BatchInputSimplePublicObjectInput.new(
            inputs: contacts
          )
          batch_api.create_batch(body: contacts_object, auth_names: 'oauth2')
        end

        private

        def contacts
          @emails.map do |email|
            ::Hubspot::Client::Crm::Contacts::Models::SimplePublicObjectInput.new(
              properties: { email: email }
            )
          end
        end

        def batch_api
          config = ::Hubspot::Client::Crm::Contacts::Configuration.new do |config|
            config.access_token = @access_token
          end
          api_client = ::Hubspot::Client::Crm::Contacts::ApiClient.new(config)
          ::Hubspot::Client::Crm::Contacts::Api::BatchApi.new(api_client)
        end
      end
    end
  end
end