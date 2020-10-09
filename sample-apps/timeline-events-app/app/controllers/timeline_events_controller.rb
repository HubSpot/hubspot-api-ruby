class TimelineEventsController < ApplicationController
  before_action :authorize

  def index
    return unless params[:contact_id]

    @contacts_url = 'https://app.hubspot.com/contacts/' + ENV['HUBSPOT_ACCOUNT_ID'] +
                    '/contact/' + params[:contact_id]
  end

  def create
    if email_valid?
      template = Services::Hubspot::Timeline::CreateTemplate.new(template_params).call
      event = Services::Hubspot::Timeline::CreateEvent.new(template_params[:email], template.id).call
      redirect_to root_path(contact_id: event.object_id)
    else
      redirect_to root_path, flash: { error: "Error: we can't find this email in your contacts list." }
    end
  end

  private

  def email_valid?
    Services::Hubspot::Contacts::Search.new(email: template_params[:email]).call.present?
  end

  def template_params
    params.require(:event_template).permit(:email, :target_record_type, :header_template, :detail_template)
  end

  def authorize
    redirect_to login_path and return if session['tokens'].blank?

    session['tokens'] = Services::Authorization::Tokens::Refresh.new(tokens: session['tokens'], request: request).call
    Services::Authorization::AuthorizeHubspot.new(tokens: session['tokens']).call
  end
end
