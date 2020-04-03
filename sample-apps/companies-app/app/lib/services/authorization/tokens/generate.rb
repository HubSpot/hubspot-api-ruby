module Services
  module Authorization
    module Tokens
      class Generate < Tokens::Base
        def initialize(code:, request:)
          @code = code
          @request = request
        end

        def call
          default_api = ::Hubspot::OAuth::DefaultApi.new
          tokens = default_api.create_token(
            grant_type: :authorization_code,
            code: @code,
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
