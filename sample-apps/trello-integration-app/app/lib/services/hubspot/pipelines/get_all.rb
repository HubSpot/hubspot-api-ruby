module Services
  module Hubspot
    module Pipelines
      class GetAll
        def call
          ::Hubspot::Crm::Pipelines::PipelinesApi.new.get_all(:deals, auth_names: 'oauth2').results
        end
      end
    end
  end
end