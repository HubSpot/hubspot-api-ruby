module Services
  module Hubspot
    module Webhooks
      class CreateOrActivateSubscription
        def initialize(app_id:, event_type:, property_name: nil)
          @app_id = app_id
          @event_type = event_type
          @property_name = property_name
        end

        def call
          begin
            request = subscription_create_request(event_type: @event_type, property_name: @property_name)
            ::Hubspot::Webhooks::SubscriptionsApi.new.create(
              @app_id,
              request
            )
          rescue => e
            existing_subscription_id = JSON.parse(JSON.parse(e.response_body)['context']['subscriptionIds'][0])[0]
            ::Hubspot::Webhooks::SubscriptionsApi.new.update(
              existing_subscription_id,
              @app_id,
              subscription_patch_request: subscription_patch_request
            )
          end
        end

        private

        def subscription_create_request(event_type:, property_name:)
          ::Hubspot::Webhooks::SubscriptionCreateRequest.new(
            active: true,
            event_type: event_type,
            property_name: property_name,
         )
        end

        def subscription_patch_request
          ::Hubspot::Webhooks::SubscriptionPatchRequest.new(enabled: true)
        end
      end
    end
  end
end