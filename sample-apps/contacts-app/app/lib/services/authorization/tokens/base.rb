module Services
  module Authorization
    module Tokens
      class Base
        CALLBACK_PATH = '/oauth/callback'.freeze

        def expires_at(expires_in)
          Time.current + (expires_in * 0.95).round
        end

        private

        def server_uri
          @request.protocol + @request.host_with_port
        end
      end
    end
  end
end
