module Trello
  class WebhooksController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :authorize

    def complete
      return head :ok
    end

    def receive
      if params[:event][:data].include?('listAfter')
        board_list_id = params[:event][:data][:listAfter][:id]
        card_id = params[:model][:id]
        associations = DealAssociation.where(card_id: card_id)
        associations.each do |association|
          deal_id = association.deal_id
          deal = Services::Hubspot::Deals::GetById.new(deal_id).call
          mapping = Mapping.where(board_list_id: board_list_id, pipeline_id: deal.properties['pipeline']).first
          if mapping.present?
            Services::Hubspot::Deals::Update.new(deal_id, properties: { dealstage: mapping.pipeline_stage_id }).call
          end
        end
      end



      render json: {}
    end
  end
end
