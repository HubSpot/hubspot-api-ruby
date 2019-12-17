module Services
  module Authorization
    class ConfigureHubspot
      CALLBACK_PATH = '/oauth/callback'.freeze

      def initialize(request:)
        @request = request
      end

      def call
        check_presence_of_credentials

        ::Hubspot.configure(
          client_id: ENV['HUBSPOT_CLIENT_ID'],
          client_secret: ENV['HUBSPOT_CLIENT_SECRET'],
          redirect_uri: server_uri + CALLBACK_PATH
        )
      end

      private

      def server_uri
        @request.protocol + @request.host_with_port
      end

      def check_presence_of_credentials
        return if ENV['HUBSPOT_CLIENT_ID'].present? && ENV['HUBSPOT_CLIENT_SECRET'].present?

        raise(ExceptionHandler::HubspotError.new, 'Please specify HUBSPOT_CLIENT_ID and HUBSPOT_CLIENT_SECRET in .env')
      end
    end
  end
end
