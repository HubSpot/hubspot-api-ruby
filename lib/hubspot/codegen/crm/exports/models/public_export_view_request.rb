=begin
#CRM Exports

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'date'
require 'time'

module Hubspot
  module Crm
    module Exports
      class PublicExportViewRequest
        attr_accessor :export_type

        attr_accessor :format

        attr_accessor :export_name

        attr_accessor :object_properties

        attr_accessor :associated_object_type

        attr_accessor :object_type

        attr_accessor :language

        attr_accessor :export_internal_values_options

        attr_accessor :override_associated_objects_per_definition_per_row_limit

        attr_accessor :public_crm_search_request

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
            :'export_type' => :'exportType',
            :'format' => :'format',
            :'export_name' => :'exportName',
            :'object_properties' => :'objectProperties',
            :'associated_object_type' => :'associatedObjectType',
            :'object_type' => :'objectType',
            :'language' => :'language',
            :'export_internal_values_options' => :'exportInternalValuesOptions',
            :'override_associated_objects_per_definition_per_row_limit' => :'overrideAssociatedObjectsPerDefinitionPerRowLimit',
            :'public_crm_search_request' => :'publicCrmSearchRequest'
          }
        end

        # Returns all the JSON keys this model knows about
        def self.acceptable_attributes
          attribute_map.values
        end

        # Attribute type mapping.
        def self.openapi_types
          {
            :'export_type' => :'String',
            :'format' => :'String',
            :'export_name' => :'String',
            :'object_properties' => :'Array<String>',
            :'associated_object_type' => :'String',
            :'object_type' => :'String',
            :'language' => :'String',
            :'export_internal_values_options' => :'Array<String>',
            :'override_associated_objects_per_definition_per_row_limit' => :'Boolean',
            :'public_crm_search_request' => :'PublicCrmSearchRequest'
          }
        end

        # List of attributes with nullable: true
        def self.openapi_nullable
          Set.new([
          ])
        end

        # List of class defined in allOf (OpenAPI v3)
        def self.openapi_all_of
          [
          :'PublicExportViewRequestAllOf'
          ]
        end

        # Initializes the object
        # @param [Hash] attributes Model attributes in the form of hash
        def initialize(attributes = {})
          if (!attributes.is_a?(Hash))
            fail ArgumentError, "The input argument (attributes) must be a hash in `Hubspot::Crm::Exports::PublicExportViewRequest` initialize method"
          end

          # check to see if the attribute exists and convert string to symbol for hash key
          attributes = attributes.each_with_object({}) { |(k, v), h|
            if (!self.class.attribute_map.key?(k.to_sym))
              fail ArgumentError, "`#{k}` is not a valid attribute in `Hubspot::Crm::Exports::PublicExportViewRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
            end
            h[k.to_sym] = v
          }

          if attributes.key?(:'export_type')
            self.export_type = attributes[:'export_type']
          else
            self.export_type = 'VIEW'
          end

          if attributes.key?(:'format')
            self.format = attributes[:'format']
          end

          if attributes.key?(:'export_name')
            self.export_name = attributes[:'export_name']
          end

          if attributes.key?(:'object_properties')
            if (value = attributes[:'object_properties']).is_a?(Array)
              self.object_properties = value
            end
          end

          if attributes.key?(:'associated_object_type')
            self.associated_object_type = attributes[:'associated_object_type']
          end

          if attributes.key?(:'object_type')
            self.object_type = attributes[:'object_type']
          end

          if attributes.key?(:'language')
            self.language = attributes[:'language']
          end

          if attributes.key?(:'export_internal_values_options')
            if (value = attributes[:'export_internal_values_options']).is_a?(Array)
              self.export_internal_values_options = value
            end
          end

          if attributes.key?(:'override_associated_objects_per_definition_per_row_limit')
            self.override_associated_objects_per_definition_per_row_limit = attributes[:'override_associated_objects_per_definition_per_row_limit']
          end

          if attributes.key?(:'public_crm_search_request')
            self.public_crm_search_request = attributes[:'public_crm_search_request']
          end
        end

        # Show invalid properties with the reasons. Usually used together with valid?
        # @return Array for valid properties with the reasons
        def list_invalid_properties
          invalid_properties = Array.new
          if @export_type.nil?
            invalid_properties.push('invalid value for "export_type", export_type cannot be nil.')
          end

          if @format.nil?
            invalid_properties.push('invalid value for "format", format cannot be nil.')
          end

          if @export_name.nil?
            invalid_properties.push('invalid value for "export_name", export_name cannot be nil.')
          end

          if @object_properties.nil?
            invalid_properties.push('invalid value for "object_properties", object_properties cannot be nil.')
          end

          if @object_type.nil?
            invalid_properties.push('invalid value for "object_type", object_type cannot be nil.')
          end

          if @language.nil?
            invalid_properties.push('invalid value for "language", language cannot be nil.')
          end

          if @export_internal_values_options.nil?
            invalid_properties.push('invalid value for "export_internal_values_options", export_internal_values_options cannot be nil.')
          end

          if @override_associated_objects_per_definition_per_row_limit.nil?
            invalid_properties.push('invalid value for "override_associated_objects_per_definition_per_row_limit", override_associated_objects_per_definition_per_row_limit cannot be nil.')
          end

          invalid_properties
        end

        # Check to see if the all the properties in the model are valid
        # @return true if the model is valid
        def valid?
          return false if @export_type.nil?
          export_type_validator = EnumAttributeValidator.new('String', ["VIEW"])
          return false unless export_type_validator.valid?(@export_type)
          return false if @format.nil?
          format_validator = EnumAttributeValidator.new('String', ["XLS", "XLSX", "CSV"])
          return false unless format_validator.valid?(@format)
          return false if @export_name.nil?
          return false if @object_properties.nil?
          return false if @object_type.nil?
          return false if @language.nil?
          language_validator = EnumAttributeValidator.new('String', ["EN", "DE", "ES", "FR", "JA", "NL", "PT_BR", "IT", "PL", "SV", "FI", "ZH_TW", "DA_DK", "NO"])
          return false unless language_validator.valid?(@language)
          return false if @export_internal_values_options.nil?
          return false if @override_associated_objects_per_definition_per_row_limit.nil?
          true
        end

        # Custom attribute writer method checking allowed values (enum).
        # @param [Object] export_type Object to be assigned
        def export_type=(export_type)
          validator = EnumAttributeValidator.new('String', ["VIEW"])
          unless validator.valid?(export_type)
            fail ArgumentError, "invalid value for \"export_type\", must be one of #{validator.allowable_values}."
          end
          @export_type = export_type
        end

        # Custom attribute writer method checking allowed values (enum).
        # @param [Object] format Object to be assigned
        def format=(format)
          validator = EnumAttributeValidator.new('String', ["XLS", "XLSX", "CSV"])
          unless validator.valid?(format)
            fail ArgumentError, "invalid value for \"format\", must be one of #{validator.allowable_values}."
          end
          @format = format
        end

        # Custom attribute writer method checking allowed values (enum).
        # @param [Object] language Object to be assigned
        def language=(language)
          validator = EnumAttributeValidator.new('String', ["EN", "DE", "ES", "FR", "JA", "NL", "PT_BR", "IT", "PL", "SV", "FI", "ZH_TW", "DA_DK", "NO"])
          unless validator.valid?(language)
            fail ArgumentError, "invalid value for \"language\", must be one of #{validator.allowable_values}."
          end
          @language = language
        end

        # Checks equality by comparing each attribute.
        # @param [Object] Object to be compared
        def ==(o)
          return true if self.equal?(o)
          self.class == o.class &&
              export_type == o.export_type &&
              format == o.format &&
              export_name == o.export_name &&
              object_properties == o.object_properties &&
              associated_object_type == o.associated_object_type &&
              object_type == o.object_type &&
              language == o.language &&
              export_internal_values_options == o.export_internal_values_options &&
              override_associated_objects_per_definition_per_row_limit == o.override_associated_objects_per_definition_per_row_limit &&
              public_crm_search_request == o.public_crm_search_request
        end

        # @see the `==` method
        # @param [Object] Object to be compared
        def eql?(o)
          self == o
        end

        # Calculates hash code according to all attributes.
        # @return [Integer] Hash code
        def hash
          [export_type, format, export_name, object_properties, associated_object_type, object_type, language, export_internal_values_options, override_associated_objects_per_definition_per_row_limit, public_crm_search_request].hash
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
            klass = Hubspot::Crm::Exports.const_get(type)
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
