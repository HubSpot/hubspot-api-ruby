module Services
  module Hubspot
    module Imports
      class Create
        def initialize(file:)
          @file = File.open(file.path)
        end

        def call
          core_api = ::Hubspot::Crm::Imports::CoreApi.new
          core_api.create(import_request: import_request(@file.path), files: @file, auth_names: 'oauth2')
        end

        private

        def import_request(filename)
          {
            "name": "test_import",
            "files": [
              {
                "fileName": filename,
                "fileImportPage": {
                  "hasHeader": true,
                  "columnMappings": [
                    {
                      "columnName": "First Name",
                      "propertyName": "firstname",
                      "columnObjectType": "CONTACT",
                    },
                    {
                      "columnName": "Email",
                      "propertyName": "email",
                      "columnObjectType": "CONTACT",
                    },
                  ]
                }
              }
            ]
          }.to_json
        end
      end
    end
  end
end
