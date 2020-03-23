class CompaniesController < ApplicationController
  before_action :authorize

  def index
    # https://developers.hubspot.com/docs/methods/companies/get_companies
    @companies = if params[:search].present?
      @search_q = params[:search]
      Services::Hubspot::Companies::Search.new(@search_q).call
    else
      # https://developers.hubspot.com/docs/methods/companies/get_companies
      Services::Hubspot::Companies::GetAll.new(limit: 100).call.sort_by(&:created_at).reverse
    end
  end

  def show
    @company = Services::Hubspot::Companies::GetById.new(params[:id]).call
    @contacts = Services::Hubspot::Associations::GetById.new(params[:id]).call
  end

  def create
    Services::Hubspot::Companies::Create.new(company_params).call
    redirect_to :companies
  rescue Hubspot::Crm::Companies::ApiError => e
    error_message = JSON.parse(e.response_body)['message']
    redirect_to new_company_path, flash: { error: error_message }
  end

  def update
    @company = Services::Hubspot::Companies::GetById.new(params[:id]).call
    Services::Hubspot::Companies::Update.new(params[:id], company_params).call
    redirect_to :companies
  rescue Hubspot::Crm::Companies::ApiError => e
    error_message = JSON.parse(e.response_body)['message']
    redirect_to company_path(params[:id]), flash: { error: error_message }
  end

  def export
    respond_to do |format|
      format.html
      format.csv do
        send_data(
          Services::Hubspot::Companies::Export.new.call,
          filename: "companies-#{Date.today}.csv"
        )
      end
    end
  end

  def destroy
    @company = Services::Hubspot::Companies::GetById.new(params[:id]).call
    Services::Hubspot::Companies::Destroy.new(params[:id]).call
    redirect_back(fallback_location: root_path, notice: "Company ##{@company.id} was successfully destroyed.")
  end

  private

  def company_params
    params.require(:company).permit(%w[name domain]).to_hash
  end

  def authorize
    redirect_to login_path and return if session['tokens'].blank?

    session['tokens'] = Services::Authorization::Tokens::Refresh.new(tokens: session['tokens'], request: request).call
    Services::Authorization::AuthorizeHubspot.new(tokens: session['tokens']).call
  end
end
