module Services
  module Hubspot
    module Webhooks
      class Handle
        def initialize(webhook)
          @webhook = webhook
        end

        def call
          create_event
        end

        private

        def create_event
          event = Event.new(
            event_type: @webhook['subscriptionType'].split('.').last,
            object_id: @webhook['objectId'],
            event_id: @webhook['eventId'],
            occured_at: @webhook['occurredAt']
          )

          if event.event_type == 'propertyChange'
            event.assign_attributes(
              property_name: @webhook['propertyName'],
              property_value: @webhook['propertyValue']
            )
          end
          event.save!
        end
      end
    end
  end
end