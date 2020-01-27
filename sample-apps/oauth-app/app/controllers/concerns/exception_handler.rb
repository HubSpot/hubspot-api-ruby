module ExceptionHandler
  extend ActiveSupport::Concern

  class HubspotError < StandardError; end

  included do
    rescue_from HubspotError, Hubspot::Client::Crm::Objects::ApiError, Hubspot::Client::Crm::Contacts::ApiError do |error|
      @error = error
      render template: 'contacts/index'
    end
  end
end
