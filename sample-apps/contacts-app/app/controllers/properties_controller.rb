class PropertiesController < ApplicationController
  before_action :authorize

  def index
    @properties = Services::Hubspot::Properties::GetAll.new.call
  end

  def show
    @property = Services::Hubspot::Properties::GetByName.new(params[:id]).call
  end

  def update
    @property = Services::Hubspot::Properties::GetByName.new(params[:id]).call
    Services::Hubspot::Properties::Update.new(params[:id], property_params).call
    redirect_to :properties
  end

  private

  def property_params
    params.require(:property).permit(%i[label description group_name type field_type]).to_hash
  end

  def authorize
    raise(ExceptionHandler::HubspotError.new, 'Please authorize via OAuth2') if session['tokens'].blank?

    session['tokens'] = Services::Authorization::Tokens::Refresh.new(tokens: session['tokens'], request: request).call
    Services::Authorization::AuthorizeHubspot.new(tokens: session['tokens']).call
  end
end
