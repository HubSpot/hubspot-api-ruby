module Services
  module Trello
    module Webhooks
      class Delete
        def initialize(webhook_id:)
          @webhook_id = webhook_id
        end

        def call
          webhook = ::Trello::Webhook.find(@webhook_id)

          webhook.delete
        end
      end
    end
  end
end