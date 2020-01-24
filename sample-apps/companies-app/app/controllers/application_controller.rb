class ApplicationController < ActionController::Base
  include ExceptionHandler

  before_action :check_env_variables
  before_action :require_login, unless: :authorized?

  helper_method :authorized?

  private

  def require_login
    redirect_to login_path if session['form'].blank?
  end

  def authorized?
    session['tokens'].present?
  end

  private

  def check_env_variables
    missing_vars = %w[HUBSPOT_CLIENT_ID HUBSPOT_CLIENT_SECRET].select { |var| ENV[var].blank? }
    raise(ExceptionHandler::HubspotError.new, "Please specify #{missing_vars.join(', ')} in .env") if missing_vars.present?
  end
end
