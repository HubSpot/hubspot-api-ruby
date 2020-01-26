class PropertiesController < ApplicationController
  before_action :authorize
  before_action :property, only: %i[show destroy]

  def index
    @properties = Services::Hubspot::Properties::GetAll.new.call
  end

  def new
    @property = Hubspot::Client::Crm::Properties::Models::Property.new(
      type: 'string', group_name: 'contactinformation', field_type: 'text'
    )
  end

  def create
    Services::Hubspot::Properties::Create.new(property_params).call
    redirect_to :properties
  rescue Hubspot::Client::Crm::Objects::ApiError => e
    error_message = JSON.parse(e.response_body)['message']
    redirect_back(fallback_location: root_path, flash: { error: error_message })
  end

  def update
    Services::Hubspot::Properties::Update.new(params[:id], property_params).call
    redirect_to :properties
  end

  def destroy
    Services::Hubspot::Properties::Destroy.new(params[:id]).call
    redirect_back(fallback_location: properties_path, notice: "Property ##{@property.name} was successfully destroyed.")
  end

  private

  def property
    @property ||= Services::Hubspot::Properties::GetByName.new(params[:id]).call
  end

  def property_params
    params.require(:property).permit(%i[name label description group_name type field_type]).to_hash
  end

  def authorize
    raise(ExceptionHandler::HubspotError.new, 'Please authorize via OAuth2') if session['tokens'].blank?

    session['tokens'] = Services::Authorization::Tokens::Refresh.new(tokens: session['tokens'], request: request).call
    Services::Authorization::AuthorizeHubspot.new(tokens: session['tokens']).call
  end
end
