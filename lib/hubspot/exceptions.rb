module Hubspot
  class ConfigurationError < StandardError; end
  class InvalidSignatureVersionError < StandardError
    def initialize(signature_version)
      @signature_version = signature_version
      super("Invalid signature version passed to request: #{@signature_version}")
    end
  end

  class InvalidSignatureTimestampError < StandardError
    def initialize(timestamp)
      @timestamp = timestamp
      super("Signature timestamp is invalid: #{@timestamp}.")
    end
  end
end
