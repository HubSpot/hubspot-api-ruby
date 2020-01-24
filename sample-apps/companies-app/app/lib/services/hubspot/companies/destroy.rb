module Services
  module Hubspot
    module Companies
      class Destroy
        def initialize(id)
          @id = id
        end

        def call
          basic_api = ::Hubspot::Client::Crm::Companies::Api::BasicApi.new
          basic_api.archive(@id, auth_names: 'oauth2')
        end
      end
    end
  end
end
