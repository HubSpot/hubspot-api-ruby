module Trello
  class WebhooksController < ApplicationController
    skip_before_action :verify_authenticity_token

    def complete
      return head :ok
    end

    def receive
      render json: {}
    end
  end
end
