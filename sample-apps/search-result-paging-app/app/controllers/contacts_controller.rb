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

  private

  def authorize
    redirect_to login_path and return if session['tokens'].blank?

    session['tokens'] = Services::Hubspot::Authorization::Tokens::Refresh.new(tokens: session['tokens'], request: request).call
    Services::Hubspot::Authorization::Authorize.new(tokens: session['tokens']).call
  end
end
