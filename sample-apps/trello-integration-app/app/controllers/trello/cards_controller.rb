module Trello
  class CardsController < ApplicationController
    layout false

    before_action :authorize
    skip_before_action :verify_authenticity_token
    before_action :allow_iframe, only: %i(search_frame search_frame_success)

    def index
      deal_id = params[:hs_object_id]
      deal_associated = DealAssociation.exists?(deal_id: deal_id)
      response = Services::Trello::Cards::Format.new(
        deal_associated: deal_associated,
        card: card(deal_id),
        request: request
      ).call

      render json: response.to_json
    end

    def create_association
      deal_id = params[:hs_object_id]
      card_id = params[:card_id]
      DealAssociation.create!(deal_id: deal_id, card_id: card_id)
      create_or_update_webhook(card_id)
      redirect_to search_frame_success_trello_cards_path
    end

    def delete_association
      deal_id = params[:hs_object_id]
      association = DealAssociation.find_by(deal_id: deal_id)
      delete_webhook(association.card_id)
      association.destroy!
    end

    def search
      query = params[:q]
      cards = Services::Trello::Cards::Search.new(query: query).call
      response = cards.each { |card| { name: card.name, id: card.id } }
      render json: response.to_json
    end

    def search_frame
      @deal_name = params['dealname']
    end

    def search_frame_success
    end

    private

    def allow_iframe
      response.headers.except! 'X-Frame-Options'
    end

    def card(deal_id)
      return nil unless DealAssociation.exists?(deal_id: deal_id)
      return @card if @card.present?

      card_id = DealAssociation.find_by(deal_id: deal_id).card_id
      @card = ::Trello::Card.find(card_id)
    end

    def create_or_update_webhook(card_id)
      webhooks = ::Webhook.where(card_id: card_id)

      if webhooks.present?
        webhooks.each do |webhook|
          Services::Trello::Webhooks::Update.new(
            webhook_id: webhook.webhook_id,
            callback_url: trello_webhooks_url
          ).call
          webhook.update!(url: callback_url)
        end
      else
        puts 'creating webhook'
        webhook = Services::Trello::Webhooks::Create.new(
          id_model: card_id,
          callback_url: trello_webhooks_url
        ).call

        ::Webhook.create!(webhook_id: webhook['id'], card_id: card_id, url: trello_webhooks_url) if webhook.present?
      end
    end

    def delete_webhook(card_id)
      webhooks = ::Webhook.where(card_id: card_id)
      webhooks.each do |webhook|
        Services::Trello::Webhooks::Delete.new(webhook_id: webhook.webhook_id).call
      end
      webhooks.destroy_all
    end
  end
end