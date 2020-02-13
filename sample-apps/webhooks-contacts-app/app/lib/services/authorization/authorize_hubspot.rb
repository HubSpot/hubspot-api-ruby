module Services
  module Authorization
    class AuthorizeHubspot
      def initialize(tokens:)
        @tokens = tokens
      end

      def call
        ::Hubspot.configure do |config|
          config.access_token = @tokens[:access_token]
        end
      end
    end
  end
end
