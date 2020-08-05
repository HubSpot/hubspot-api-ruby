module Services
  module Hubspot
    module ExtensionsCards
      class Create
        include Rails.application.routes.url_helpers

        def initialize(request:)
          @request = request
        end

        def call
          deal_object_type = ::Hubspot::Crm::Extensions::Cards::CardObjectTypeBody.new(
            name: 'deals', properties_to_send: %w(hs_object_id dealname)
          )

          target_url = url_for(controller: 'trello/cards',
            action: :index,
            only_path: false,
            protocol: 'https',
            host: @request.host
          )

          fetch = ::Hubspot::Crm::Extensions::Cards::CardFetchBodyPatch.new(
            target_url: target_url, object_types: [deal_object_type]
          )

          base_url = target_url = url_for(controller: :home,
            action: :index,
            only_path: false,
            protocol: 'https',
            host: @request.host
          )
          actions = ::Hubspot::Crm::Extensions::Cards::CardActions.new(base_urls: [base_url])
          card_id = ExtensionCard.find_by(card_id_key: ExtensionCard::CARD_ID_KEY)&.card_id

          if card_id.present?
            card_patch_request = ::Hubspot::Crm::Extensions::Cards::CardPatchRequest.new(
              fetch: fetch,
              actions: actions
            )
            ::Hubspot::Crm::Extensions::Cards::CardsApi.new.update(
              ENV['HUBSPOT_APPLICATION_ID'],
              card_id,
              card_patch_request: card_patch_request,
            )
          else
            card_create_request = ::Hubspot::Crm::Extensions::Cards::CardCreateRequest.new(
              title: ExtensionCard::CARD_TITLE,
              fetch: fetch,
              actions: actions,
              display: ::Hubspot::Crm::Extensions::Cards::CardDisplayBody.new
            )

            response = ::Hubspot::Crm::Extensions::Cards::CardsApi.new.create(
              ENV['HUBSPOT_APPLICATION_ID'],
              card_create_request: card_create_request
            )

            ExtensionCard.create!(card_id_key: ExtensionCard::CARD_ID_KEY, card_id: response.id)
          end

          outdated_webhooks = Webhook.where.not(url: callback_url)
          outdated_webhooks.each do |webhook|
            Services::Trello::Webhooks::Update.new(webhook_id: webhook.webhook_id, callback_url: callback_url).call
            webhook.update!(url: callback_url)
          end
        end

        private

        def callback_url
          url_for(controller: 'trello/webhooks',
            action: :receive,
            only_path: false,
            protocol: 'https',
            host: @request.host
          )
        end
      end
    end
  end
end