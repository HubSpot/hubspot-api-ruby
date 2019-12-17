module Services
  module Authorization
    module Tokens
      class Refresh < Tokens::Base
        def initialize(tokens:)
          @tokens = tokens
        end

        def call
          @tokens = refresh_tokens if Time.current > @tokens['expires_at']
          @tokens
        end

        private

        def refresh_tokens
          tokens = ::Hubspot::OAuth.refresh(@tokens['refresh_token'])
          tokens['expires_at'] = expires_at(tokens['expires_in'])
          tokens
        end
      end
    end
  end
end
