class HomeController < ApplicationController
  before_action :authorize

  def index;end

  private

  def authorize
    redirect_to login_path and return if session['tokens'].blank?

    session['tokens'] = Services::Hubspot::Authorization::Tokens::Refresh.new(tokens: session['tokens'], request: request).call
    Services::Hubspot::Authorization::Authorize.new(tokens: session['tokens']).call
  end
end
