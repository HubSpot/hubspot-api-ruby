module Services
  module Hubspot
    module Webhooks
      class PauseActiveSubscriptions
        def initialize(app_id:)
          @app_id = app_id
        end

        def call
          return false if active_subscriptions.empty?

          inputs = active_subscriptions.map do |subscription|
            ::Hubspot::Webhooks::SubscriptionBatchUpdateRequest.new(
              id: subscription.id,
              active: false
            )
          end

          batch_input_subscription_batch_update_request =
            ::Hubspot::Webhooks::BatchInputSubscriptionBatchUpdateRequest.new(inputs: inputs)

          ::Hubspot::Webhooks::SubscriptionsApi.new.update_batch(
            @app_id,
            batch_input_subscription_batch_update_request
          )
        end

        private

        def active_subscriptions
          return @active_subscriptions if @active_subscriptions.present?

          subscriptions = ::Hubspot::Webhooks::SubscriptionsApi.new.get_all(@app_id).results
          @active_subscriptions = subscriptions.filter(&:active)
        end
      end
    end
  end
end