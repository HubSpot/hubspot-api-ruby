module Oauth
  class AuthorizationController < ApplicationController
    def authorize
      url = Services::Authorization::GetAuthorizationUri.new(request: request).call
      redirect_to url
    end

    def callback
      tokens = Services::Authorization::Tokens::Generate.new(
        code: params[:code],
        request: request
      ).call
      Token.instance.update!(tokens)
      session['tokens'] = tokens
      Services::Authorization::AuthorizeHubspot.new(tokens: tokens).call
      redirect_to '/events'
    end
  end
end
