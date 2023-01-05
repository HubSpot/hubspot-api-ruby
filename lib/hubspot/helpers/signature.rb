require 'date'
require 'openssl'

module Hubspot
  module Helpers
    class Signature
      MAX_ALLOWED_TIMESTAMP = 3000
      def is_valid(
        signature: String,
        client_secret: String,
        request_body: String,
        http_uri: nil,
        http_method: 'POST',
        signature_version: 'v2',
        timestamp: nil
      )
        if signature_version == "v3"
          current_time = DateTime.now.strftime("%s").to_i
          if current_time - timestamp.to_i > MAX_ALLOWED_TIMESTAMP
            raise StandardError("Timestamp is invalid, reject request.")
          end
        end
        hashed_signature = get_signature(
          client_secret: client_secret,
          request_body: request_body,
          signature_version: signature_version,
          http_uri: http_uri,
          http_method: http_method,
          timestamp: timestamp
        )

        signature == hashed_signature
      end

      def get_signature(
        client_secret: String,
        request_body: String,
        signature_version: String,
        http_uri: nil,
        http_method: "POST",
        timestamp: nil
      )
        case signature_version
          when "v1"
            source_string = "#{client_secret}#{request_body}"
            hash_result = Digest::SHA2.hexdigest(source_string.encode('utf-8'))
            return hash_result
          when "v2"
            source_string =  "#{client_secret}#{http_method}#{http_uri}#{request_body}"
            hash_result = Digest::SHA2.hexdigest(source_string.encode('utf-8'))
            return hash_result
          when "v3"
            source_string = "#{http_method}#{http_uri}#{request_body}#{timestamp}"
            hash_result =  OpenSSL::HMAC.base64digest('SHA256', client_secret, source_string.encode('utf-8'))
            return hash_result
           else
             raise StandardError("Not supported signature version: #{signature_version}")
        end
      end
    end
  end
end
