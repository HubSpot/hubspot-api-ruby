class EventsController < ApplicationController
  before_action :authorize

  def index
    @contacts = Services::Hubspot::Contacts::GetBatch.new(Event.all.map(&:object_id).uniq).call
  end

  private

  def authorize
    unless authorized?
      redirect_to login_path and return unless Token.any?

      session['tokens'] = Token.instance.attributes
    end

    session['tokens'] = Services::Authorization::Tokens::Refresh.new(tokens: session['tokens'], request: request).call
    Services::Authorization::AuthorizeHubspot.new(tokens: session['tokens']).call
  end
end
