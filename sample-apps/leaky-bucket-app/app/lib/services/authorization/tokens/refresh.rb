module Services
  module Authorization
    module Tokens
      class Refresh < Tokens::Base
        def initialize(tokens:, request:)
          @tokens = tokens
          @request = request
        end

        def call
          @tokens = refresh_tokens if Time.current > @tokens[:expires_at]
          @tokens
        end

        private

        def refresh_tokens
          default_api = ::Hubspot::OAuth::DefaultApi.new
          tokens = default_api.create_token(
            grant_type: :refresh_token,
            refresh_token: @tokens[:refresh_token],
            redirect_uri: redirect_uri,
            client_id: ENV['HUBSPOT_CLIENT_ID'],
            client_secret: ENV['HUBSPOT_CLIENT_SECRET'],
            return_type: 'Object'
          )
          tokens[:expires_at] = expires_at(tokens[:expires_in])
          tokens
        end
      end
    end
  end
end
