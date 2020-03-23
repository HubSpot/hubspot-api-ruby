module Services
  module Authorization
    class GetAuthorizationUri
      CALLBACK_PATH = '/oauth/callback'.freeze

      def initialize(request:)
        @request = request
      end

      def call
        check_presence_of_credentials

        ::Hubspot::OAuthHelper.authorize_url(
          client_id: ENV['HUBSPOT_CLIENT_ID'],
          redirect_uri: redirect_uri,
          scope: %w[contacts]
        )
      end

      private

      def redirect_uri
        @request.protocol + @request.host_with_port + CALLBACK_PATH
      end

      def check_presence_of_credentials
        return if ENV['HUBSPOT_CLIENT_ID'].present?

        raise(ExceptionHandler::HubspotError.new, 'Please specify HUBSPOT_CLIENT_ID in .env')
      end
    end
  end
end
