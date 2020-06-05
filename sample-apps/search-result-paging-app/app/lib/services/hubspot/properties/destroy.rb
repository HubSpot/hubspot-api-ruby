module Services
  module Hubspot
    module Properties
      class Destroy
        def initialize(name)
          @name = name
        end

        def call
          core_api = ::Hubspot::Crm::Properties::CoreApi.new
          core_api.archive('contact', @name, auth_names: 'oauth2')
        end
      end
    end
  end
end
