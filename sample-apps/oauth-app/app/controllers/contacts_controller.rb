class ContactsController < ApplicationController
  before_action :authorize

  def index
    # https://developers.hubspot.com/docs/methods/contacts/get_contacts
    @contacts = if params[:search].present?
      @search_q = params[:search]
      Services::Hubspot::Contacts::Search.new(email: @search_q).call
    else
      # https://developers.hubspot.com/docs/methods/contacts/get_contacts
      Services::Hubspot::Contacts::GetPage.new(limit: 100).call.sort_by(&:created_at).reverse
    end
  end

  def show
    @contact = Services::Hubspot::Contacts::GetById.new(params[:id]).call
    @owners = Services::Hubspot::Owners::GetAll.new.call
  end

  def create
    Services::Hubspot::Contacts::Create.new(email: params[:email]).call
    redirect_to :contacts
  rescue Hubspot::Crm::Contacts::ApiError => e
    error_message = JSON.parse(e.response_body)['message']
    redirect_to new_contact_path, flash: { error: error_message }
  end

  def update
    @contact = Services::Hubspot::Contacts::GetById.new(params[:id]).call
    Services::Hubspot::Contacts::Update.new(params[:id], contact_params).call
    redirect_to :contacts
  rescue Hubspot::Crm::Contacts::ApiError => e
    error_message = JSON.parse(e.response_body)['message']
    redirect_to contact_path(params[:id]), flash: { error: error_message }
  end

  def export
    respond_to do |format|
      format.html
      format.csv do
        send_data(
          Services::Hubspot::Contacts::Export.new.call,
          filename: "contacts-#{Date.today}.csv"
        )
      end
    end
  end

  def destroy
    @contact = Services::Hubspot::Contacts::GetById.new(params[:id]).call
    Services::Hubspot::Contacts::Destroy.new(params[:id]).call
    redirect_back(fallback_location: root_path, notice: "Contact ##{@contact.id} was successfully destroyed.")
  end

  private

  def contact_params
    params.require(:contact).permit(@contact.properties.keys).to_hash
  end

  def authorize
    redirect_to login_path and return if session['tokens'].blank?

    session['tokens'] = Services::Authorization::Tokens::Refresh.new(tokens: session['tokens'], request: request).call
    Services::Authorization::AuthorizeHubspot.new(tokens: session['tokens']).call
  end
end
