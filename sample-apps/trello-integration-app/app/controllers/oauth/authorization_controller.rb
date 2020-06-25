module Oauth
  class AuthorizationController < ApplicationController
    def login
      @trello_authorized = session[:trello_tokens].present?
      @hubspot_authorized = session[:hubspot_tokens].present?
    end

    def authorize_hubspot
      url = Services::Hubspot::Authorization::GetAuthorizationUri.new(request: request).call
      redirect_to url
    end

    def hubspot_callback
      session[:hubspot_tokens] = Services::Hubspot::Authorization::Tokens::Generate.new(
        code: params[:code],
        request: request
      ).call
      HubspotToken.instance.update_attributes(session[:hubspot_tokens])
      Services::Hubspot::Authorization::Authorize.new(tokens: session[:hubspot_tokens]).call
      redirect_to '/'
    end

    def trello_callback
      trello_tokens = request.env["omniauth.auth"]['credentials']
      session[:trello_tokens] = trello_tokens
      TrelloToken.instance.update_attributes(trello_tokens.to_hash)

      redirect_to '/'
    end
  end
end
