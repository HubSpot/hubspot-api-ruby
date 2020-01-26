module Services
  module Hubspot
    module Companies
      class GetById
        def initialize(id)
          @id = id
        end

        def call
          basic_api = ::Hubspot::Client::Crm::Companies::Api::BasicApi.new
          basic_api.get_by_id(@id, auth_names: 'oauth2')
        end
      end
    end
  end
end
