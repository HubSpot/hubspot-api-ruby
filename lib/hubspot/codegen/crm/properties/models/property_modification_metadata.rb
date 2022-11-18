=begin
#Properties

#All HubSpot objects store data in default and custom properties. These endpoints provide access to read and modify object properties in HubSpot.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.2

=end

require 'date'

module Hubspot
  module Crm
    module Properties
      class PropertyModificationMetadata
        attr_accessor :archivable

        attr_accessor :read_only_definition

        attr_accessor :read_only_options

        attr_accessor :read_only_value

        # Attribute mapping from ruby-style variable name to JSON key.
        def self.attribute_map
          {
            :'archivable' => :'archivable',
            :'read_only_definition' => :'readOnlyDefinition',
            :'read_only_options' => :'readOnlyOptions',
            :'read_only_value' => :'readOnlyValue'
          }
        end

        # Attribute type mapping.
        def self.openapi_types
          {
            :'archivable' => :'Boolean',
            :'read_only_definition' => :'Boolean',
            :'read_only_options' => :'Boolean',
            :'read_only_value' => :'Boolean'
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
            fail ArgumentError, "The input argument (attributes) must be a hash in `Hubspot::Crm::Properties::PropertyModificationMetadata` initialize method"
          end

          # check to see if the attribute exists and convert string to symbol for hash key
          attributes = attributes.each_with_object({}) { |(k, v), h|
            if (!self.class.attribute_map.key?(k.to_sym))
              fail ArgumentError, "`#{k}` is not a valid attribute in `Hubspot::Crm::Properties::PropertyModificationMetadata`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
            end
            h[k.to_sym] = v
          }

          if attributes.key?(:'archivable')
            self.archivable = attributes[:'archivable']
          end

          if attributes.key?(:'read_only_definition')
            self.read_only_definition = attributes[:'read_only_definition']
          end

          if attributes.key?(:'read_only_options')
            self.read_only_options = attributes[:'read_only_options']
          end

          if attributes.key?(:'read_only_value')
            self.read_only_value = attributes[:'read_only_value']
          end
        end

        # Show invalid properties with the reasons. Usually used together with valid?
        # @return Array for valid properties with the reasons
        def list_invalid_properties
          invalid_properties = Array.new
          if @archivable.nil?
            invalid_properties.push('invalid value for "archivable", archivable cannot be nil.')
          end

          if @read_only_definition.nil?
            invalid_properties.push('invalid value for "read_only_definition", read_only_definition cannot be nil.')
          end

          if @read_only_value.nil?
            invalid_properties.push('invalid value for "read_only_value", read_only_value cannot be nil.')
          end

          invalid_properties
        end

        # Check to see if the all the properties in the model are valid
        # @return true if the model is valid
        def valid?
          return false if @archivable.nil?
          return false if @read_only_definition.nil?
          return false if @read_only_value.nil?
          true
        end

        # Checks equality by comparing each attribute.
        # @param [Object] Object to be compared
        def ==(o)
          return true if self.equal?(o)
          self.class == o.class &&
              archivable == o.archivable &&
              read_only_definition == o.read_only_definition &&
              read_only_options == o.read_only_options &&
              read_only_value == o.read_only_value
        end

        # @see the `==` method
        # @param [Object] Object to be compared
        def eql?(o)
          self == o
        end

        # Calculates hash code according to all attributes.
        # @return [Integer] Hash code
        def hash
          [archivable, read_only_definition, read_only_options, read_only_value].hash
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
            Hubspot::Crm::Properties.const_get(type).build_from_hash(value)
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
