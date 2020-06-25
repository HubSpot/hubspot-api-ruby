class ApplicationController < ActionController::Base
  include ExceptionHandler

  before_action :check_env_variables

  helper_method :authorized?

  private

  def authorized?
    session['hubspot_tokens'].present? && session['trello_tokens'].present?
  end

  def check_env_variables
    missing_vars = %w[HUBSPOT_CLIENT_ID HUBSPOT_CLIENT_SECRET].select { |var| ENV[var].blank? }
    raise(ExceptionHandler::HubspotError.new, "Please specify #{missing_vars.join(', ')} in .env") if missing_vars.present?
  end

  def authorize
    unless authorized?
      redirect_to login_path and return unless (HubspotToken.any? && TrelloToken.any?)

      session['hubspot_tokens'] = HubspotToken.instance.attributes
      session['trello_tokens'] = TrelloToken.instance.attributes
    end

    session['hubspot_tokens'] = Services::Hubspot::Authorization::Tokens::Refresh.new(tokens: session['hubspot_tokens'], request: request).call
    Services::Hubspot::Authorization::Authorize.new(tokens: session['hubspot_tokens']).call
    Services::Trello::Authorization::Authorize.new(tokens: session['trello_tokens']).call
  end
end
