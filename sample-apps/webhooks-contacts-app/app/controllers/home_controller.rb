class HomeController < ApplicationController
  before_action :authorize

  def index
    @target_url = url_for(controller: :webhooks, action: :callback, only_path: false, protocol: 'https')
  end

  def start
    ::Hubspot.configure do |config|
      config.api_key = { 'hapikey' => ENV['HUBSPOT_DEVELOPER_API_KEY'] }
    end

    app_id = ENV['HUBSPOT_APPLICATION_ID']
    Services::Hubspot::Webhooks::PauseActiveSubscriptions.new(app_id: app_id).call

    target_url = url_for(controller: :webhooks, action: :callback, only_path: false, protocol: 'https')
    Services::Hubspot::Webhooks::ConfigureTargetUrl.new(app_id: app_id, target_url: target_url).call

    subscriptions = [
      {"event_type": "contact.propertyChange", "property_name": "firstname"},
      {"event_type": "contact.creation"},
      {"event_type": "contact.deletion"},
    ]

    subscriptions.each do |subscription|
      Services::Hubspot::Webhooks::CreateOrActivateSubscription.new(app_id: app_id, **subscription).call
    end

    redirect_to controller: :events, action: :index
  end

  private

  def authorize
    unless authorized?
      redirect_to login_path and return unless Token.any?

      session['tokens'] = Token.instance.attributes
    end

    session['tokens'] = Services::Hubspot::Authorization::Tokens::Refresh.new(tokens: session['tokens'], request: request).call
    Services::Hubspot::Authorization::Authorize.new(tokens: session['tokens']).call
  end
end