module Services
  module Hubspot
    module Webhooks
      class ConfigureTargetUrl
        def initialize(app_id:, target_url:)
          @app_id = app_id
          @target_url = target_url
        end

        def call
          ::Hubspot::Webhooks::SettingsApi.new.configure(
            @app_id,
            settings_change_request(@target_url)
          )
        end

        private

        def settings_change_request(target_url)
          ::Hubspot::Webhooks::SettingsChangeRequest.new(target_url: target_url)
        end
      end
    end
  end
end