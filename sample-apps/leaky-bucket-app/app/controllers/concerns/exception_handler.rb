module ExceptionHandler
  extend ActiveSupport::Concern

  class HubspotError < StandardError; end

  included do
    rescue_from HubspotError do |error|
      @error = error
      render template: 'home/index'
    end
  end
end
