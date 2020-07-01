module Trello
  class CardsController < ApplicationController
    layout false

    before_action :authorize
    skip_before_action :verify_authenticity_token
    before_action :allow_iframe, only: %i(search_frame search_frame_success)

    def index
      deal_id = params[:hs_object_id]
      deal_associated = DealAssociation.exists?(deal_id: deal_id)
      if deal_associated
        card_id = DealAssociation.find_by(deal_id: deal_id).card_id
        card = ::Trello::Card.find(card_id)
      end

      response = Services::Trello::Cards::Format.new(
        deal_associated: deal_associated,
        card: card || nil,
        request: request
      ).call

      render json: response.to_json
    end

    def create_association
      deal_id = params[:hs_object_id]
      card_id = params[:card_id]
      DealAssociation.create!(deal_id: deal_id, card_id: card_id)

      redirect_to search_frame_success_trello_cards_path
    end

    def delete_association
      deal_id = params[:hs_object_id]
      DealAssociation.find_by(deal_id: deal_id).destroy!
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
  end
end