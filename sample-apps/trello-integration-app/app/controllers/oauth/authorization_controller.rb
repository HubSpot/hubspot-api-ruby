module Oauth
  class AuthorizationController < ApplicationController
    def authorize
      url = Services::Hubspot::Authorization::GetAuthorizationUri.new(request: request).call
      redirect_to url
    end

    def callback
      session[:tokens] = Services::Hubspot::Authorization::Tokens::Generate.new(
        code: params[:code],
        request: request
      ).call
      Services::Hubspot::Authorization::Authorize.new(tokens: session[:tokens]).call
      redirect_to '/'
    end

    def login;end
  end
end
