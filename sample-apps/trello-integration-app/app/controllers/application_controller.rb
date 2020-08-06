class ApplicationController < ActionController::Base
  include ExceptionHandler

  before_action :check_env_variables
  protect_from_forgery prepend: true

  helper_method :authorized?

  private

  def authorized?
    HubspotToken.instance.filled? && TrelloToken.instance.filled?
  end

  def check_env_variables
    missing_vars = %w[
      HUBSPOT_CLIENT_ID
      HUBSPOT_CLIENT_SECRET
      HUBSPOT_DEVELOPER_API_KEY
      HUBSPOT_APPLICATION_ID
      TRELLO_KEY
      TRELLO_SECRET
    ].select { |var| ENV[var].blank? }
    raise(ExceptionHandler::HubspotError.new, "Please specify #{missing_vars.join(', ')} in .env") if missing_vars.present?
  end

  def authorize
    redirect_to login_path and return unless authorized?

    new_hubspot_tokens = Services::Hubspot::Authorization::Tokens::Refresh.new(
      tokens: HubspotToken.instance.attributes,
      request: request
    ).call
    HubspotToken.instance.update_attributes(new_hubspot_tokens)
    Services::Hubspot::Authorization::Authorize.new(tokens: HubspotToken.instance.attributes).call
    Services::Trello::Authorization::Authorize.new(tokens: TrelloToken.instance.attributes).call
  end
end
