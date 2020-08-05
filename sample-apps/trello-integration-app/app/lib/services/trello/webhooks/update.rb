module Services
  module Trello
    module Webhooks
      class Update
        def initialize(webhook_id:, callback_url:)
          @webhook_id = webhook_id
          @callback_url = callback_url
        end

        def call
          webhook = ::Trello::Webhook.find(@webhook_id)

          webhook.update_fields(callback_url: @callback_url, active: true)
          webhook.save
        end
      end
    end
  end
end