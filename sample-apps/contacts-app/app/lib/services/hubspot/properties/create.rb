module Services
  module Hubspot
    module Properties
      class Create
        def initialize(params)
          @params = params
        end

        def call
          core_api = ::Hubspot::Client::Crm::Properties::Api::CoreApi.new
          params = { auth_names: 'oauth2', body: property_create }
          core_api.create('contact',params)
        end

        private

        def property_create
          @property_create ||= ::Hubspot::Client::Crm::Properties::Models::PropertyCreate.new(@params)
        end
      end
    end
  end
end
