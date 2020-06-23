class ApplicationController < ActionController::Base
  include ExceptionHandler

  before_action :check_env_variables

  private

  def check_env_variables
    missing_vars = %w[HUBSPOT_CLIENT_ID HUBSPOT_CLIENT_SECRET].select { |var| ENV[var].blank? }
    raise(ExceptionHandler::HubspotError.new, "Please specify #{missing_vars.join(', ')} in .env") if missing_vars.present?
  end

  def authorize
    redirect_to login_path and return if (session['hubspot_tokens'].blank? || session['trello_tokens'].blank?)

    session['hubspot_tokens'] = Services::Hubspot::Authorization::Tokens::Refresh.new(tokens: session['hubspot_tokens'], request: request).call
    Services::Hubspot::Authorization::Authorize.new(tokens: session['hubspot_tokens']).call
  end
end
