=begin
#Lists

#CRUD operations to manage lists and list memberships

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'date'
require 'time'

module Hubspot
  module Crm
    module Lists
      class PublicObjectListSearchResult
        # The processing type of the list.
        attr_accessor :processing_type

        # The object type of the list.
        attr_accessor :object_type_id

        # The ID of the user that last updated the list.
        attr_accessor :updated_by_id

        # The time when the filters for this list were last updated.
        attr_accessor :filters_updated_at

        # The **ILS ID** of the list.
        attr_accessor :list_id

        # The time when the list was created.
        attr_accessor :created_at

        # The processing status of the list.
        attr_accessor :processing_status

        # The time when the list was deleted.
        attr_accessor :deleted_at

        # The version of the list.
        attr_accessor :list_version

        # The name of the list.
        attr_accessor :name

        # The name and value of any additional properties that exist for this list and that were included in the search request.
        attr_accessor :additional_properties

        # The ID of the user that created the list.
        attr_accessor :created_by_id

        # The time the list was last updated.
        attr_accessor :updated_at

        # Attribute mapping from ruby-style variable name to JSON key.
        def self.attribute_map
          {
            :'processing_type' => :'processingType',
            :'object_type_id' => :'objectTypeId',
            :'updated_by_id' => :'updatedById',
            :'filters_updated_at' => :'filtersUpdatedAt',
            :'list_id' => :'listId',
            :'created_at' => :'createdAt',
            :'processing_status' => :'processingStatus',
            :'deleted_at' => :'deletedAt',
            :'list_version' => :'listVersion',
            :'name' => :'name',
            :'additional_properties' => :'additionalProperties',
            :'created_by_id' => :'createdById',
            :'updated_at' => :'updatedAt'
          }
        end

        # Returns all the JSON keys this model knows about
        def self.acceptable_attributes
          attribute_map.values
        end

        # Attribute type mapping.
        def self.openapi_types
          {
            :'processing_type' => :'String',
            :'object_type_id' => :'String',
            :'updated_by_id' => :'Integer',
            :'filters_updated_at' => :'Time',
            :'list_id' => :'Integer',
            :'created_at' => :'Time',
            :'processing_status' => :'String',
            :'deleted_at' => :'Time',
            :'list_version' => :'Integer',
            :'name' => :'String',
            :'additional_properties' => :'Hash<String, String>',
            :'created_by_id' => :'Integer',
            :'updated_at' => :'Time'
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
            fail ArgumentError, "The input argument (attributes) must be a hash in `Hubspot::Crm::Lists::PublicObjectListSearchResult` initialize method"
          end

          # check to see if the attribute exists and convert string to symbol for hash key
          attributes = attributes.each_with_object({}) { |(k, v), h|
            if (!self.class.attribute_map.key?(k.to_sym))
              fail ArgumentError, "`#{k}` is not a valid attribute in `Hubspot::Crm::Lists::PublicObjectListSearchResult`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
            end
            h[k.to_sym] = v
          }

          if attributes.key?(:'processing_type')
            self.processing_type = attributes[:'processing_type']
          end

          if attributes.key?(:'object_type_id')
            self.object_type_id = attributes[:'object_type_id']
          end

          if attributes.key?(:'updated_by_id')
            self.updated_by_id = attributes[:'updated_by_id']
          end

          if attributes.key?(:'filters_updated_at')
            self.filters_updated_at = attributes[:'filters_updated_at']
          end

          if attributes.key?(:'list_id')
            self.list_id = attributes[:'list_id']
          end

          if attributes.key?(:'created_at')
            self.created_at = attributes[:'created_at']
          end

          if attributes.key?(:'processing_status')
            self.processing_status = attributes[:'processing_status']
          end

          if attributes.key?(:'deleted_at')
            self.deleted_at = attributes[:'deleted_at']
          end

          if attributes.key?(:'list_version')
            self.list_version = attributes[:'list_version']
          end

          if attributes.key?(:'name')
            self.name = attributes[:'name']
          end

          if attributes.key?(:'additional_properties')
            if (value = attributes[:'additional_properties']).is_a?(Hash)
              self.additional_properties = value
            end
          end

          if attributes.key?(:'created_by_id')
            self.created_by_id = attributes[:'created_by_id']
          end

          if attributes.key?(:'updated_at')
            self.updated_at = attributes[:'updated_at']
          end
        end

        # Show invalid properties with the reasons. Usually used together with valid?
        # @return Array for valid properties with the reasons
        def list_invalid_properties
          invalid_properties = Array.new
          if @processing_type.nil?
            invalid_properties.push('invalid value for "processing_type", processing_type cannot be nil.')
          end

          if @object_type_id.nil?
            invalid_properties.push('invalid value for "object_type_id", object_type_id cannot be nil.')
          end

          if @list_id.nil?
            invalid_properties.push('invalid value for "list_id", list_id cannot be nil.')
          end

          if @processing_status.nil?
            invalid_properties.push('invalid value for "processing_status", processing_status cannot be nil.')
          end

          if @list_version.nil?
            invalid_properties.push('invalid value for "list_version", list_version cannot be nil.')
          end

          if @name.nil?
            invalid_properties.push('invalid value for "name", name cannot be nil.')
          end

          if @additional_properties.nil?
            invalid_properties.push('invalid value for "additional_properties", additional_properties cannot be nil.')
          end

          invalid_properties
        end

        # Check to see if the all the properties in the model are valid
        # @return true if the model is valid
        def valid?
          return false if @processing_type.nil?
          return false if @object_type_id.nil?
          return false if @list_id.nil?
          return false if @processing_status.nil?
          return false if @list_version.nil?
          return false if @name.nil?
          return false if @additional_properties.nil?
          true
        end

        # Checks equality by comparing each attribute.
        # @param [Object] Object to be compared
        def ==(o)
          return true if self.equal?(o)
          self.class == o.class &&
              processing_type == o.processing_type &&
              object_type_id == o.object_type_id &&
              updated_by_id == o.updated_by_id &&
              filters_updated_at == o.filters_updated_at &&
              list_id == o.list_id &&
              created_at == o.created_at &&
              processing_status == o.processing_status &&
              deleted_at == o.deleted_at &&
              list_version == o.list_version &&
              name == o.name &&
              additional_properties == o.additional_properties &&
              created_by_id == o.created_by_id &&
              updated_at == o.updated_at
        end

        # @see the `==` method
        # @param [Object] Object to be compared
        def eql?(o)
          self == o
        end

        # Calculates hash code according to all attributes.
        # @return [Integer] Hash code
        def hash
          [processing_type, object_type_id, updated_by_id, filters_updated_at, list_id, created_at, processing_status, deleted_at, list_version, name, additional_properties, created_by_id, updated_at].hash
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
            klass = Hubspot::Crm::Lists.const_get(type)
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
