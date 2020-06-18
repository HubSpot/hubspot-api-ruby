module Oauth
  module AuthorizationHelper
    def trello_authorized?
      session[:trello_tokens].present?
    end

    def hubspot_authorized?
      session[:hubspot_tokens].present?
    end
  end
end