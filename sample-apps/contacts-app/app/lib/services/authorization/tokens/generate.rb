module Services
  module Authorization
    module Tokens
      class Generate < Tokens::Base
        def initialize(code:)
          @code = code
        end

        def call
          tokens = ::Hubspot::OAuth.create(@code)
          tokens['expires_at'] = expires_at(tokens['expires_in'])
          tokens
        end
      end
    end
  end
end
