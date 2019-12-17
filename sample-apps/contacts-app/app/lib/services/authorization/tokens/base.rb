module Services
  module Authorization
    module Tokens
      class Base
        def expires_at(expires_in)
          Time.current + (expires_in * 0.95).round
        end
      end
    end
  end
end
