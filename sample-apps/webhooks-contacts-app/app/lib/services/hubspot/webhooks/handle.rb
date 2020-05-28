module Services
  module Hubspot
    module Webhooks
      class Handle
        def initialize(webhook:, request:)
          @webhook = webhook
          @request = request
        end

        def call
          validate_signature
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

        def validate_signature
          ::Hubspot::Helpers::WebhooksHelper.validate_signature(
            signature: @request.headers['X-HubSpot-Signature'],
            signature_version: @request.headers['X-HubSpot-Signature-Version'],
            http_uri: @request.base_url,
            request_body: @request.raw_post,
            client_secret: ENV["HUBSPOT_CLIENT_SECRET"]
          )
        end
      end
    end
  end
end