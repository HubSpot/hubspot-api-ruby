module Oauth
  module AuthorizationHelper
    def trello_authorized?
      TrelloToken.instance.filled?
    end

    def hubspot_authorized?
      HubspotToken.instance.filled?
    end
  end
end