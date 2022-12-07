=begin
#Transactional Email

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.2

=end

require 'date'

module Hubspot
  module Marketing
    module Transactional
      class EmailSendStatusView
        # Identifier used to query the status of the send.
        attr_accessor :status_id

        # Result of the send.
        attr_accessor :send_result

        # Time when the send was requested.
        attr_accessor :requested_at

        # Time when the send began processing.
        attr_accessor :started_at

        # Time when the send was completed.
        attr_accessor :completed_at

        # Status of the send request.
        attr_accessor :status

        attr_accessor :event_id

        class EnumAttributeValidator
          attr_reader :datatype
          attr_reader :allowable_values

          def initialize(datatype, allowable_values)
            @allowable_values = allowable_values.map do |value|
              case datatype.to_s
              when /Integer/i
                value.to_i
              when /Float/i
                value.to_f
              else
                value
              end
            end
          end

          def valid?(value)
            !value || allowable_values.include?(value)
          end
        end

        # Attribute mapping from ruby-style variable name to JSON key.
        def self.attribute_map
          {
            :'status_id' => :'statusId',
            :'send_result' => :'sendResult',
            :'requested_at' => :'requestedAt',
            :'started_at' => :'startedAt',
            :'completed_at' => :'completedAt',
            :'status' => :'status',
            :'event_id' => :'eventId'
          }
        end

        # Attribute type mapping.
        def self.openapi_types
          {
            :'status_id' => :'String',
            :'send_result' => :'String',
            :'requested_at' => :'DateTime',
            :'started_at' => :'DateTime',
            :'completed_at' => :'DateTime',
            :'status' => :'String',
            :'event_id' => :'EventIdView'
          }
        end

        # List of attributes with nullable: true
        def self.openapi_nullable
          Set.new([
          ])
        end

        # Initializes the object
        # @param [Hash] attributes Model attributes in the form of hash
        def initialize(attributes = {})
          if (!attributes.is_a?(Hash))
            fail ArgumentError, "The input argument (attributes) must be a hash in `Hubspot::Marketing::Transactional::EmailSendStatusView` initialize method"
          end

          # check to see if the attribute exists and convert string to symbol for hash key
          attributes = attributes.each_with_object({}) { |(k, v), h|
            if (!self.class.attribute_map.key?(k.to_sym))
              fail ArgumentError, "`#{k}` is not a valid attribute in `Hubspot::Marketing::Transactional::EmailSendStatusView`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
            end
            h[k.to_sym] = v
          }

          if attributes.key?(:'status_id')
            self.status_id = attributes[:'status_id']
          end

          if attributes.key?(:'send_result')
            self.send_result = attributes[:'send_result']
          end

          if attributes.key?(:'requested_at')
            self.requested_at = attributes[:'requested_at']
          end

          if attributes.key?(:'started_at')
            self.started_at = attributes[:'started_at']
          end

          if attributes.key?(:'completed_at')
            self.completed_at = attributes[:'completed_at']
          end

          if attributes.key?(:'status')
            self.status = attributes[:'status']
          end

          if attributes.key?(:'event_id')
            self.event_id = attributes[:'event_id']
          end
        end

        # Show invalid properties with the reasons. Usually used together with valid?
        # @return Array for valid properties with the reasons
        def list_invalid_properties
          invalid_properties = Array.new
          if @status_id.nil?
            invalid_properties.push('invalid value for "status_id", status_id cannot be nil.')
          end

          if @status.nil?
            invalid_properties.push('invalid value for "status", status cannot be nil.')
          end

          invalid_properties
        end

        # Check to see if the all the properties in the model are valid
        # @return true if the model is valid
        def valid?
          return false if @status_id.nil?
          send_result_validator = EnumAttributeValidator.new('String', ["SENT", "IDEMPOTENT_IGNORE", "QUEUED", "IDEMPOTENT_FAIL", "THROTTLED", "EMAIL_DISABLED", "PORTAL_SUSPENDED", "INVALID_TO_ADDRESS", "BLOCKED_DOMAIN", "PREVIOUSLY_BOUNCED", "EMAIL_UNCONFIRMED", "PREVIOUS_SPAM", "PREVIOUSLY_UNSUBSCRIBED_MESSAGE", "PREVIOUSLY_UNSUBSCRIBED_PORTAL", "INVALID_FROM_ADDRESS", "CAMPAIGN_CANCELLED", "VALIDATION_FAILED", "MTA_IGNORE", "BLOCKED_ADDRESS", "PORTAL_OVER_LIMIT", "PORTAL_EXPIRED", "PORTAL_MISSING_MARKETING_SCOPE", "MISSING_TEMPLATE_PROPERTIES", "MISSING_REQUIRED_PARAMETER", "PORTAL_AUTHENTICATION_FAILURE", "MISSING_CONTENT", "CORRUPT_INPUT", "TEMPLATE_RENDER_EXCEPTION", "GRAYMAIL_SUPPRESSED", "UNCONFIGURED_SENDING_DOMAIN", "UNDELIVERABLE", "CANCELLED_ABUSE", "QUARANTINED_ADDRESS", "ADDRESS_ONLY_ACCEPTED_ON_PROD", "PORTAL_NOT_AUTHORIZED_FOR_APPLICATION", "ADDRESS_LIST_BOMBED", "ADDRESS_OPTED_OUT", "RECIPIENT_FATIGUE_SUPPRESSED", "TOO_MANY_RECIPIENTS", "PREVIOUSLY_UNSUBSCRIBED_BRAND", "NON_MARKETABLE_CONTACT", "PREVIOUSLY_UNSUBSCRIBED_BUSINESS_UNIT"])
          return false unless send_result_validator.valid?(@send_result)
          return false if @status.nil?
          status_validator = EnumAttributeValidator.new('String', ["PENDING", "PROCESSING", "CANCELED", "COMPLETE"])
          return false unless status_validator.valid?(@status)
          true
        end

        # Custom attribute writer method checking allowed values (enum).
        # @param [Object] send_result Object to be assigned
        def send_result=(send_result)
          validator = EnumAttributeValidator.new('String', ["SENT", "IDEMPOTENT_IGNORE", "QUEUED", "IDEMPOTENT_FAIL", "THROTTLED", "EMAIL_DISABLED", "PORTAL_SUSPENDED", "INVALID_TO_ADDRESS", "BLOCKED_DOMAIN", "PREVIOUSLY_BOUNCED", "EMAIL_UNCONFIRMED", "PREVIOUS_SPAM", "PREVIOUSLY_UNSUBSCRIBED_MESSAGE", "PREVIOUSLY_UNSUBSCRIBED_PORTAL", "INVALID_FROM_ADDRESS", "CAMPAIGN_CANCELLED", "VALIDATION_FAILED", "MTA_IGNORE", "BLOCKED_ADDRESS", "PORTAL_OVER_LIMIT", "PORTAL_EXPIRED", "PORTAL_MISSING_MARKETING_SCOPE", "MISSING_TEMPLATE_PROPERTIES", "MISSING_REQUIRED_PARAMETER", "PORTAL_AUTHENTICATION_FAILURE", "MISSING_CONTENT", "CORRUPT_INPUT", "TEMPLATE_RENDER_EXCEPTION", "GRAYMAIL_SUPPRESSED", "UNCONFIGURED_SENDING_DOMAIN", "UNDELIVERABLE", "CANCELLED_ABUSE", "QUARANTINED_ADDRESS", "ADDRESS_ONLY_ACCEPTED_ON_PROD", "PORTAL_NOT_AUTHORIZED_FOR_APPLICATION", "ADDRESS_LIST_BOMBED", "ADDRESS_OPTED_OUT", "RECIPIENT_FATIGUE_SUPPRESSED", "TOO_MANY_RECIPIENTS", "PREVIOUSLY_UNSUBSCRIBED_BRAND", "NON_MARKETABLE_CONTACT", "PREVIOUSLY_UNSUBSCRIBED_BUSINESS_UNIT"])
          unless validator.valid?(send_result)
            fail ArgumentError, "invalid value for \"send_result\", must be one of #{validator.allowable_values}."
          end
          @send_result = send_result
        end

        # Custom attribute writer method checking allowed values (enum).
        # @param [Object] status Object to be assigned
        def status=(status)
          validator = EnumAttributeValidator.new('String', ["PENDING", "PROCESSING", "CANCELED", "COMPLETE"])
          unless validator.valid?(status)
            fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
          end
          @status = status
        end

        # Checks equality by comparing each attribute.
        # @param [Object] Object to be compared
        def ==(o)
          return true if self.equal?(o)
          self.class == o.class &&
              status_id == o.status_id &&
              send_result == o.send_result &&
              requested_at == o.requested_at &&
              started_at == o.started_at &&
              completed_at == o.completed_at &&
              status == o.status &&
              event_id == o.event_id
        end

        # @see the `==` method
        # @param [Object] Object to be compared
        def eql?(o)
          self == o
        end

        # Calculates hash code according to all attributes.
        # @return [Integer] Hash code
        def hash
          [status_id, send_result, requested_at, started_at, completed_at, status, event_id].hash
        end

        # Builds the object from hash
        # @param [Hash] attributes Model attributes in the form of hash
        # @return [Object] Returns the model itself
        def self.build_from_hash(attributes)
          new.build_from_hash(attributes)
        end

        # Builds the object from hash
        # @param [Hash] attributes Model attributes in the form of hash
        # @return [Object] Returns the model itself
        def build_from_hash(attributes)
          return nil unless attributes.is_a?(Hash)
          self.class.openapi_types.each_pair do |key, type|
            if type =~ /\AArray<(.*)>/i
              # check to ensure the input is an array given that the attribute
              # is documented as an array but the input is not
              if attributes[self.class.attribute_map[key]].is_a?(Array)
                self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
              end
            elsif !attributes[self.class.attribute_map[key]].nil?
              self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
            end # or else data not found in attributes(hash), not an issue as the data can be optional
          end

          self
        end

        # Deserializes the data based on type
        # @param string type Data type
        # @param string value Value to be deserialized
        # @return [Object] Deserialized data
        def _deserialize(type, value)
          case type.to_sym
          when :DateTime
            DateTime.parse(value)
          when :Date
            Date.parse(value)
          when :String
            value.to_s
          when :Integer
            value.to_i
          when :Float
            value.to_f
          when :Boolean
            if value.to_s =~ /\A(true|t|yes|y|1)\z/i
              true
            else
              false
            end
          when :Object
            # generic object (usually a Hash), return directly
            value
          when /\AArray<(?<inner_type>.+)>\z/
            inner_type = Regexp.last_match[:inner_type]
            value.map { |v| _deserialize(inner_type, v) }
          when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
            k_type = Regexp.last_match[:k_type]
            v_type = Regexp.last_match[:v_type]
            {}.tap do |hash|
              value.each do |k, v|
                hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
              end
            end
          else # model
            Hubspot::Marketing::Transactional.const_get(type).build_from_hash(value)
          end
        end

        # Returns the string representation of the object
        # @return [String] String presentation of the object
        def to_s
          to_hash.to_s
        end

        # to_body is an alias to to_hash (backward compatibility)
        # @return [Hash] Returns the object in the form of hash
        def to_body
          to_hash
        end

        # Returns the object in the form of hash
        # @return [Hash] Returns the object in the form of hash
        def to_hash
          hash = {}
          self.class.attribute_map.each_pair do |attr, param|
            value = self.send(attr)
            if value.nil?
              is_nullable = self.class.openapi_nullable.include?(attr)
              next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
            end
            
            hash[param] = _to_hash(value)
          end
          hash
        end

        # Outputs non-array value in the form of hash
        # For object, use to_hash. Otherwise, just return the value
        # @param [Object] value Any valid value
        # @return [Hash] Returns the value in the form of hash
        def _to_hash(value)
          if value.is_a?(Array)
            value.compact.map { |v| _to_hash(v) }
          elsif value.is_a?(Hash)
            {}.tap do |hash|
              value.each { |k, v| hash[k] = _to_hash(v) }
            end
          elsif value.respond_to? :to_hash
            value.to_hash
          else
            value
          end
        end
      end
    end
  end
end
