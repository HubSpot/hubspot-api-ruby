require 'date'
require 'openssl'

module Hubspot
  module Helpers
    class Signature
      MAX_ALLOWED_TIMESTAMP = 300_000

      def timestamp_valid?(timestamp)
        return false if timestamp.nil?

        begin
          get_current_timestamp_microseconds - timestamp.to_i < MAX_ALLOWED_TIMESTAMP
        rescue StandardError
          false
        end
      end

      def is_valid(
        signature:,
        client_secret:,
        request_body:,
        http_uri: nil,
        http_method: 'POST',
        signature_version: 'v2',
        timestamp: nil
      )
        if signature_version == "v3"
          unless timestamp_valid?(timestamp)
            raise InvalidSignatureTimestampError, "Invalid timestamp: #{timestamp}"
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

        secure_compare(signature, hashed_signature)
      end

      def get_current_timestamp_microseconds
        (Time.now.to_f * 1000).to_i
      end

      def get_signature(
        client_secret:,
        request_body:,
        signature_version:,
        http_uri: nil,
        http_method: "POST",
        timestamp: nil
      )
        case signature_version
        when "v1"
          source_string = "#{client_secret}#{request_body}"
          Digest::SHA2.hexdigest(source_string.encode('utf-8'))
        when "v2"
          source_string = "#{client_secret}#{http_method}#{http_uri}#{request_body}"
          Digest::SHA2.hexdigest(source_string.encode('utf-8'))
        when "v3"
          source_string = "#{http_method}#{http_uri}#{request_body}#{timestamp}"
          OpenSSL::HMAC.base64digest('SHA256', client_secret, source_string.encode('utf-8'))
        else
          raise InvalidSignatureVersionError, "Invalid signature version: #{signature_version}"
        end
      end

      def secure_compare(a, b)
        return false unless a.is_a?(String) && b.is_a?(String) && a.bytesize == b.bytesize

        result = 0
        a.bytes.zip(b.bytes) { |x, y| result |= x ^ y }
        result.zero?
      end
    end
  end
end
