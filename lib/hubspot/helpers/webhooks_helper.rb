# @deprecated
module Hubspot
  module Helpers
    class WebhooksHelper
      def self.validate_signature(
        signature:,
        client_secret:,
        http_uri:,
        request_body:,
        http_method: 'POST',
        signature_version: 'v2'
      )

        if signature_version == 'v1'
          source_string = client_secret + request_body.to_s
        else
          source_string = client_secret + http_method + http_uri + request_body.to_s
        end

        hash_result = Digest::SHA2.hexdigest(source_string.encode('utf-8'))

        if hash_result != signature
          raise InvalidSignatureError.new(
            signature: signature,
            signature_version: signature_version,
            hash_result: hash_result
          )
        end
      end
    end
  end
end