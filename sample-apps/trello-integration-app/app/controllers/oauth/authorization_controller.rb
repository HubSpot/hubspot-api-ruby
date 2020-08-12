module Oauth
  class AuthorizationController < ApplicationController
    def login
    end

    def authorize_hubspot
      url = Services::Hubspot::Authorization::GetAuthorizationUri.new(request: request).call
      redirect_to url
    end

    def hubspot_callback
      tokens = Services::Hubspot::Authorization::Tokens::Generate.new(
        code: params[:code],
        request: request
      ).call
      HubspotToken.instance.update_attributes(tokens)
      Services::Hubspot::Authorization::Authorize.new(tokens: HubspotToken.instance.attributes).call
      redirect_to '/'
    end

    def trello_callback
      trello_tokens = request.env["omniauth.auth"]['credentials']
      TrelloToken.instance.update_attributes(trello_tokens.to_hash)

      redirect_to '/'
    end
  end
end
