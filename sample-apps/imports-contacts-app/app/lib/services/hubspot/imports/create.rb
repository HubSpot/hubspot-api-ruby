module Services
  module Hubspot
    module Imports
      class Create
        def initialize(uploaded_file:)
          @file = copy_file_to_uploads(uploaded_file)
          @filename = uploaded_file.original_filename
        end

        def call
          core_api = ::Hubspot::Crm::Imports::CoreApi.new
          core_api.create(import_request: import_request(@filename), files: @file, auth_names: 'oauth2')
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

        def copy_file_to_uploads(uploaded_file)
          tmp = uploaded_file.tempfile
          destiny_file = File.join('public', 'uploads', uploaded_file.original_filename)
          FileUtils.cp tmp.path, destiny_file
          File.open(destiny_file)
        end
      end
    end
  end
end
