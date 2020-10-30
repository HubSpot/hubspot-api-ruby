module Hubspot
  class OAuthHelper
    AUTHORIZE_URL = 'https://app.hubspot.com/oauth/authorize'.freeze
    class << self
      def authorize_url(options = {})
        client_id = options.fetch(:client_id)
        redirect_uri = options.fetch(:redirect_uri)
        scope = options.fetch(:scope)
        optional_scope = options.fetch(:optional_scope, [])
        
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
