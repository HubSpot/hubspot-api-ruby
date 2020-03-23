module Hubspot
  class OAuthHelper
    AUTHORIZE_URL = 'https://app.hubspot.com/oauth/authorize'.freeze
    class << self
      def authorize_url(client_id:, redirect_uri:, scope:, optional_scope: [])
        query = URI.encode_www_form(
          client_id: client_id,
          redirect_uri: redirect_uri,
          scope: Array(scope),
          optional_scope: Array(optional_scope)
        )

        "#{AUTHORIZE_URL}?#{query}"
      end
    end
  end
end
