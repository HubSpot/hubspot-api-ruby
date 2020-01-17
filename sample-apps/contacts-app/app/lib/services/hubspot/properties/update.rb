module Services
  module Hubspot
    module Properties
      class Update
        def initialize(name, params)
          @name = name
          @params = params
        end

        def call
          core_api = ::Hubspot::Client::Crm::Properties::Api::CoreApi.new
          params = { auth_names: 'oauth2', body: property_update }
          core_api.patch_crm_v3_properties_object_type_property_name('contact', @name, params)
        end

        private

        def property_update
          @property_update ||= ::Hubspot::Client::Crm::Properties::Models::PropertyUpdate.new(@params)
        end
      end
    end
  end
end
