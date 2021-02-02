=begin
#Calling Extensions API

#Provides a way for apps to add custom calling options to a contact record. This works in conjunction with the [Calling SDK](#), which is used to build your phone/calling UI. The endpoints here allow your service to appear as an option to HubSpot users when they access the *Call* action on a contact record. Once accessed, your custom phone/calling UI will be displayed in an iframe at the specified URL with the specified dimensions on that record.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'date'

module Hubspot
  module Crm
    module Extensions
      module Calling
        class SettingsPatchRequest
          # The name of your calling service to display to users.
          attr_accessor :name

          # The URL to your phone/calling UI, built with the [Calling SDK](#).
          attr_accessor :url

          # The target height of the iframe that will contain your phone/calling UI.
          attr_accessor :height

          # The target width of the iframe that will contain your phone/calling UI.
          attr_accessor :width

          # When true, your service will appear as an option under the *Call* action in contact records of connected accounts.
          attr_accessor :is_ready

          # Attribute mapping from ruby-style variable name to JSON key.
          def self.attribute_map
            {
              :'name' => :'name',
              :'url' => :'url',
              :'height' => :'height',
              :'width' => :'width',
              :'is_ready' => :'isReady'
            }
          end

          # Attribute type mapping.
          def self.openapi_types
            {
              :'name' => :'String',
              :'url' => :'String',
              :'height' => :'Integer',
              :'width' => :'Integer',
              :'is_ready' => :'Boolean'
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
              fail ArgumentError, "The input argument (attributes) must be a hash in `Hubspot::Crm::Extensions::Calling::SettingsPatchRequest` initialize method"
            end

            # check to see if the attribute exists and convert string to symbol for hash key
            attributes = attributes.each_with_object({}) { |(k, v), h|
              if (!self.class.attribute_map.key?(k.to_sym))
                fail ArgumentError, "`#{k}` is not a valid attribute in `Hubspot::Crm::Extensions::Calling::SettingsPatchRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
              end
              h[k.to_sym] = v
            }

            if attributes.key?(:'name')
              self.name = attributes[:'name']
            end

            if attributes.key?(:'url')
              self.url = attributes[:'url']
            end

            if attributes.key?(:'height')
              self.height = attributes[:'height']
            end

            if attributes.key?(:'width')
              self.width = attributes[:'width']
            end

            if attributes.key?(:'is_ready')
              self.is_ready = attributes[:'is_ready']
            end
          end

          # Show invalid properties with the reasons. Usually used together with valid?
          # @return Array for valid properties with the reasons
          def list_invalid_properties
            invalid_properties = Array.new
            invalid_properties
          end

          # Check to see if the all the properties in the model are valid
          # @return true if the model is valid
          def valid?
            true
          end

          # Checks equality by comparing each attribute.
          # @param [Object] Object to be compared
          def ==(o)
            return true if self.equal?(o)
            self.class == o.class &&
                name == o.name &&
                url == o.url &&
                height == o.height &&
                width == o.width &&
                is_ready == o.is_ready
          end

          # @see the `==` method
          # @param [Object] Object to be compared
          def eql?(o)
            self == o
          end

          # Calculates hash code according to all attributes.
          # @return [Integer] Hash code
          def hash
            [name, url, height, width, is_ready].hash
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
              Hubspot::Crm::Extensions::Calling.const_get(type).build_from_hash(value)
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
end
