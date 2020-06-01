class WebhooksController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:callback]

  def callback
    webhooks = JSON.parse(request.raw_post)
    webhooks.each { |webhook| Services::Hubspot::Webhooks::Handle.new(webhook: webhook, request: request).call }
    render json: {}
  end
end
