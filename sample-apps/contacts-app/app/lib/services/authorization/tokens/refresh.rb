module Services
  module Authorization
    module Tokens
      class Refresh < Tokens::Base
        def initialize(tokens:)
          @tokens = tokens
        end

        def call
          @tokens = refresh_tokens if Time.current > @tokens[:expires_at]
          @tokens
        end

        private

        def refresh_tokens
          tokens_api = ::Hubspot::Client::OAuth::Api::TokensApi.new
          tokens = tokens_api.postoauthv1token(
            grant_type: :authorization_code,
            code: @code,
            redirect_uri: server_uri + CALLBACK_PATH,
            client_id: ENV['HUBSPOT_CLIENT_ID'],
            client_secret: ENV['HUBSPOT_CLIENT_SECRET'],
            refresh_token: @tokens[:refresh_token]
          )
          tokens['expires_at'] = expires_at(tokens['expires_in'])
          tokens
        end
      end
    end
  end
end
