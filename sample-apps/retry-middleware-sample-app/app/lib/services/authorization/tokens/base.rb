module Services
  module Authorization
    module Tokens
      class Base
        CALLBACK_PATH = '/oauth/callback'.freeze

        def expires_at(expires_in)
          Time.current + (expires_in * 0.95).round
        end

        private

        def redirect_uri
          @request.protocol + @request.host_with_port + CALLBACK_PATH
        end
      end
    end
  end
end
