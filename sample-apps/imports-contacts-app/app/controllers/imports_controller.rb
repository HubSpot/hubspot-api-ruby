class ImportsController < ApplicationController
  before_action :authorize

  def index
    @imports = if params[:search].present?
      @search_q = params[:search]
      Services::Hubspot::Imports::Search.new(email: @search_q).call
    else
      Services::Hubspot::Imports::GetPage.new(limit: 100).call.sort_by(&:created_at).reverse
    end
  end

  def create
    Services::Hubspot::Imports::Create.new(file: params[:file]).call
  end

  # def show
  #   @contact = Services::Hubspot::Contacts::GetById.new(params[:id]).call
  #   @properties = Services::Hubspot::Properties::GetAll.new.call
  #   @owners = Services::Hubspot::Owners::GetAll.new.call
  # end

  # def create
  #   Services::Hubspot::Contacts::Create.new(email: params[:email]).call
  #   redirect_to :contacts
  # rescue Hubspot::Crm::Contacts::ApiError => e
  #   error_message = JSON.parse(e.response_body)['message']
  #   redirect_to new_contact_path, flash: { error: error_message }
  # end

  private

  # def contact_params
  #   params.require(:contact).permit(@contact.properties.keys).to_hash
  # end



  def authorize
    redirect_to login_path and return if session['tokens'].blank?

    session['tokens'] = Services::Authorization::Tokens::Refresh.new(tokens: session['tokens'], request: request).call
    Services::Authorization::AuthorizeHubspot.new(tokens: session['tokens']).call
  end
end
