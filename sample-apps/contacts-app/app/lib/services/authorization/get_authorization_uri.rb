module Services
  module Authorization
    class GetAuthorizationUri
      CALLBACK_PATH = '/oauth/callback'.freeze

      def initialize(request:)
        @request = request
      end

      def call
        check_presence_of_credentials

        ::Hubspot::OAuth.authorize_url(
          client_id: ENV['HUBSPOT_CLIENT_ID'],
          redirect_uri: server_uri + CALLBACK_PATH,
          scope: %w[contacts content]
        )
      end

      private

      def server_uri
        @request.protocol + @request.host_with_port
      end

      def check_presence_of_credentials
        return if ENV['HUBSPOT_CLIENT_ID'].present?

        raise(ExceptionHandler::HubspotError.new, 'Please specify HUBSPOT_CLIENT_ID in .env')
      end
    end
  end
end
