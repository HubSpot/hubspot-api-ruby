class ApplicationController < ActionController::Base
  include ExceptionHandler

  before_action :configure_hubspot

  private

  def configure_hubspot
    Services::Authorization::ConfigureHubspot.new(request: request).call
  end
end
