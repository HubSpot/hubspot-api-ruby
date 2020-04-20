module Services
  module Hubspot
    module Contacts
      class ArchiveBatch
        def initialize(ids, access_token)
          @ids = ids
          @access_token = access_token
        end

        def call
          ids_object = ::Hubspot::Crm::Contacts::BatchInputSimplePublicObjectId.new(
            inputs: @ids
          )
          batch_api.archive(body: ids_object , auth_names: 'oauth2')
        end

        private

        def batch_api
          config = ::Hubspot::Crm::Contacts::Configuration.new do |config|
            config.access_token = @access_token
          end
          api_client = ::Hubspot::Crm::Contacts::ApiClient.new(config)
          ::Hubspot::Crm::Contacts::BatchApi.new(api_client)
        end
      end
    end
  end
end