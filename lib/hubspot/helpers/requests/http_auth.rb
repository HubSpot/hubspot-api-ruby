module Hubspot
  module Helpers
    class Auth
      def self.get_auth_types
        [:access_token, :api_key]
      end

      def self.has_auth_value?(source, key)
        !source[key].nil? && !source[key].to_s.empty?
      end

      def self.choose_auth(config, options)
        auth_types = get_auth_types
        auth_type = options[:auth_type] || nil

        if auth_type.nil?
          auth_types.each do |key|
            if has_auth_value?(config, key)
              auth_type = key
              break
            end
          end
        end

        if auth_type && auth_types.include?(auth_type)
          return { auth_type: auth_type }
        else
          raise "Unsupported auth_type: #{auth_type}"
        end
      end
    end
  end
end
