module Services
  module Trello
    module Authorization
      class Authorize
        def initialize(tokens:)
          @tokens = tokens
        end

        def call
          ::Trello.configure do |config|
            config.consumer_key = ENV['TRELLO_KEY']
            config.consumer_secret = ENV['TRELLO_SECRET']
            config.oauth_token = @tokens['token']
            config.oauth_token_secret = @tokens['secret']
          end
        end
      end
    end
  end
end