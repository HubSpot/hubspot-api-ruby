module Services
  module Authorization
    module Tokens
      class Generate < Tokens::Base
        CALLBACK_PATH = '/oauth/callback'.freeze

        def initialize(code:, request:)
          @code = code
          @request = request
        end

        def call
          tokens_api = ::Hubspot::Client::OAuth::Api::TokensApi.new
          tokens = tokens_api.postoauthv1token(
            grant_type: :authorization_code,
            code: @code,
            redirect_uri: server_uri + CALLBACK_PATH,
            client_id: ENV['HUBSPOT_CLIENT_ID'],
            client_secret: ENV['HUBSPOT_CLIENT_SECRET']
          )
          tokens[:expires_at] = expires_at(tokens[:expires_in])
          tokens
        end

        private

        def server_uri
          @request.protocol + @request.host_with_port
        end
      end
    end
  end
end
