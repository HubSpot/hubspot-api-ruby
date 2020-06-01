class EventsController < ApplicationController
  MAX_BATCH_SIZE = 100

  before_action :authorize

  def index
    @events = Event.all
    contact_id_batches = @events.map(&:object_id).uniq.each_slice(MAX_BATCH_SIZE).to_a
    @contacts = contact_id_batches.each_with_object({}) do |batch, memo|
      batch = Services::Hubspot::Contacts::GetBatch.new(batch).call
      batch.each { |contact| memo[contact[:id]] = { name: contact[:name] } }
    end
  end

  def not_shown_count
    render json: { count: Event.where('created_at > ?', params[:time_mark].to_datetime).count }
  end

  private

  def authorize
    unless authorized?
      redirect_to login_path and return unless Token.any?

      session['tokens'] = Token.instance.attributes
    end

    session['tokens'] = Services::Hubspot::Authorization::Tokens::Refresh.new(tokens: session['tokens'], request: request).call
    Services::Hubspot::Authorization::Authorize.new(tokens: session['tokens']).call
  end
end