module Hubspot
  class OAuthHelper
    AUTHORIZE_URL = 'https://app.hubspot.com/oauth/authorize'.freeze
    class << self
      def authorize_url(client_id, redirect_uri, scopes = nil, optional_scopes = nil)
        query_params = {
          "client_id" => client_id,
          "redirect_uri" => redirect_uri
        }

        query_params["scope"] = scopes.join(' ') if scopes
        query_params["optional_scope"] = optional_scopes.join(' ') if optional_scopes

        params = URI.encode_www_form(query_params)

        "#{AUTHORIZE_URL}?#{params}"
      end
    end
  end
end
