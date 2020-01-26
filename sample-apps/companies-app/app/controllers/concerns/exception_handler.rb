module ExceptionHandler
  extend ActiveSupport::Concern

  class HubspotError < StandardError; end

  included do
    rescue_from HubspotError, Hubspot::Client::Crm::Objects::ApiError do |error|
      @error = error
      render template: 'companies/index'
    end
  end
end
