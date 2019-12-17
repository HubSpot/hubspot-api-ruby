module Oauth
  class AuthorizationController < ApplicationController
    def authorize
      url = ::Hubspot::OAuth.authorize_url(%w[contacts content])
      redirect_to url
    end

    def callback
      session[:tokens] = Services::Authorization::Tokens::Generate.new(code: params[:code]).call
      Services::Authorization::AuthorizeHubspot.new(tokens: session[:tokens]).call
      redirect_to '/contacts'
    end
  end
end
