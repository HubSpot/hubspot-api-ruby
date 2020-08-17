module Services
  module Hubspot
    module Properties
      class Create
        def initialize(params)
          @params = params
        end

        def call
          core_api = ::Hubspot::Crm::Properties::CoreApi.new
          core_api.create('contact', property_create, auth_names: 'oauth2')
        end

        private

        def property_create
          @property_create ||= ::Hubspot::Crm::Properties::PropertyCreate.new(@params)
        end
      end
    end
  end
end
