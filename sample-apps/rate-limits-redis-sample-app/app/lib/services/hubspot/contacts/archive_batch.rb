module Services
  module Hubspot
    module Contacts
      class ArchiveBatch
        def initialize(ids, access_token)
          @ids = ids
          @access_token = access_token
        end

        def call
          ids_object = ::Hubspot::Client::Crm::Contacts::Models::BatchInputSimplePublicObjectId.new(
            inputs: @ids
          )
          batch_api.archive_batch(body: ids_object , auth_names: 'oauth2')
        end

        private

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