module Services
  module Hubspot
    module Properties
      class GetByName
        def initialize(name)
          @name = name
        end

        def call
          core_api = ::Hubspot::Client::Crm::Properties::Api::CoreApi.new
          core_api.get_by_name(
            'contacts',
            @name,
            auth_names: 'oauth2'
          )
        end
      end
    end
  end
end
