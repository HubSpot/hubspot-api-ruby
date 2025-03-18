=begin
#Automation Actions V4

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v4

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'date'
require 'time'

module Hubspot
  module Automation
    module Actions
      class PublicConditionalSingleFieldDependency
        attr_accessor :dependency_type

        attr_accessor :controlling_field_name

        attr_accessor :controlling_field_value

        attr_accessor :dependent_field_names

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
            :'dependency_type' => :'dependencyType',
            :'controlling_field_name' => :'controllingFieldName',
            :'controlling_field_value' => :'controllingFieldValue',
            :'dependent_field_names' => :'dependentFieldNames'
          }
        end

        # Returns all the JSON keys this model knows about
        def self.acceptable_attributes
          attribute_map.values
        end

        # Attribute type mapping.
        def self.openapi_types
          {
            :'dependency_type' => :'String',
            :'controlling_field_name' => :'String',
            :'controlling_field_value' => :'String',
            :'dependent_field_names' => :'Array<String>'
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
            fail ArgumentError, "The input argument (attributes) must be a hash in `Hubspot::Automation::Actions::PublicConditionalSingleFieldDependency` initialize method"
          end

          # check to see if the attribute exists and convert string to symbol for hash key
          attributes = attributes.each_with_object({}) { |(k, v), h|
            if (!self.class.attribute_map.key?(k.to_sym))
              fail ArgumentError, "`#{k}` is not a valid attribute in `Hubspot::Automation::Actions::PublicConditionalSingleFieldDependency`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
            end
            h[k.to_sym] = v
          }

          if attributes.key?(:'dependency_type')
            self.dependency_type = attributes[:'dependency_type']
          else
            self.dependency_type = 'CONDITIONAL_SINGLE_FIELD'
          end

          if attributes.key?(:'controlling_field_name')
            self.controlling_field_name = attributes[:'controlling_field_name']
          end

          if attributes.key?(:'controlling_field_value')
            self.controlling_field_value = attributes[:'controlling_field_value']
          end

          if attributes.key?(:'dependent_field_names')
            if (value = attributes[:'dependent_field_names']).is_a?(Array)
              self.dependent_field_names = value
            end
          end
        end

        # Show invalid properties with the reasons. Usually used together with valid?
        # @return Array for valid properties with the reasons
        def list_invalid_properties
          invalid_properties = Array.new
          if @dependency_type.nil?
            invalid_properties.push('invalid value for "dependency_type", dependency_type cannot be nil.')
          end

          if @controlling_field_name.nil?
            invalid_properties.push('invalid value for "controlling_field_name", controlling_field_name cannot be nil.')
          end

          if @controlling_field_value.nil?
            invalid_properties.push('invalid value for "controlling_field_value", controlling_field_value cannot be nil.')
          end

          if @dependent_field_names.nil?
            invalid_properties.push('invalid value for "dependent_field_names", dependent_field_names cannot be nil.')
          end

          invalid_properties
        end

        # Check to see if the all the properties in the model are valid
        # @return true if the model is valid
        def valid?
          return false if @dependency_type.nil?
          dependency_type_validator = EnumAttributeValidator.new('String', ["CONDITIONAL_SINGLE_FIELD"])
          return false unless dependency_type_validator.valid?(@dependency_type)
          return false if @controlling_field_name.nil?
          return false if @controlling_field_value.nil?
          return false if @dependent_field_names.nil?
          true
        end

        # Custom attribute writer method checking allowed values (enum).
        # @param [Object] dependency_type Object to be assigned
        def dependency_type=(dependency_type)
          validator = EnumAttributeValidator.new('String', ["CONDITIONAL_SINGLE_FIELD"])
          unless validator.valid?(dependency_type)
            fail ArgumentError, "invalid value for \"dependency_type\", must be one of #{validator.allowable_values}."
          end
          @dependency_type = dependency_type
        end

        # Checks equality by comparing each attribute.
        # @param [Object] Object to be compared
        def ==(o)
          return true if self.equal?(o)
          self.class == o.class &&
              dependency_type == o.dependency_type &&
              controlling_field_name == o.controlling_field_name &&
              controlling_field_value == o.controlling_field_value &&
              dependent_field_names == o.dependent_field_names
        end

        # @see the `==` method
        # @param [Object] Object to be compared
        def eql?(o)
          self == o
        end

        # Calculates hash code according to all attributes.
        # @return [Integer] Hash code
        def hash
          [dependency_type, controlling_field_name, controlling_field_value, dependent_field_names].hash
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
          attributes = attributes.transform_keys(&:to_sym)
          self.class.openapi_types.each_pair do |key, type|
            if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
              self.send("#{key}=", nil)
            elsif type =~ /\AArray<(.*)>/i
              # check to ensure the input is an array given that the attribute
              # is documented as an array but the input is not
              if attributes[self.class.attribute_map[key]].is_a?(Array)
                self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
              end
            elsif !attributes[self.class.attribute_map[key]].nil?
              self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
            end
          end

          self
        end

        # Deserializes the data based on type
        # @param string type Data type
        # @param string value Value to be deserialized
        # @return [Object] Deserialized data
        def _deserialize(type, value)
          case type.to_sym
          when :Time
            Time.parse(value)
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
            # models (e.g. Pet) or oneOf
            klass = Hubspot::Automation::Actions.const_get(type)
            klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
