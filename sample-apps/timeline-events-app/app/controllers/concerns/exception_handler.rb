module ExceptionHandler
  extend ActiveSupport::Concern

  class HubspotError < StandardError; end

  included do
    rescue_from HubspotError do |error|
      @error = error
      render template: 'timeline_events/index'
    end
  end
end
