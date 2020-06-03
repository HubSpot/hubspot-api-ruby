module Hubspot
  class ConfigurationError < StandardError; end

  class InvalidSignatureError < StandardError
    def initialize(msg: nil, signature: nil, signature_version: nil, hash_result: nil)
      @signature = signature
      @signature_version = signature_version
      @hash_result = hash_result
      msg = "Invalid signature passed to request" if msg.nil?

      super(msg)
    end
  end
end
