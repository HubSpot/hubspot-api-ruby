=begin
#Files

#Upload and manage files.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'date'
require 'time'

module Hubspot
  module Files
    # Object for updating files.
    class FileUpdateInput
      # NONE: Do not run any duplicate validation. REJECT: Reject the upload if a duplicate is found. RETURN_EXISTING: If a duplicate file is found, do not upload a new file and return the found duplicate instead. 
      attr_accessor :access

      # FolderId where the file should be moved to. folderId and folderPath parameters cannot be set at the same time.
      attr_accessor :parent_folder_id

      # New name for the file.
      attr_accessor :name

      # Folder path where the file should be moved to. folderId and folderPath parameters cannot be set at the same time.
      attr_accessor :parent_folder_path

      attr_accessor :clear_expires

      # Mark whether the file should be used in new content or not.
      attr_accessor :is_usable_in_content

      attr_accessor :expires_at

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
          :'access' => :'access',
          :'parent_folder_id' => :'parentFolderId',
          :'name' => :'name',
          :'parent_folder_path' => :'parentFolderPath',
          :'clear_expires' => :'clearExpires',
          :'is_usable_in_content' => :'isUsableInContent',
          :'expires_at' => :'expiresAt'
        }
      end

      # Returns all the JSON keys this model knows about
      def self.acceptable_attributes
        attribute_map.values
      end

      # Attribute type mapping.
      def self.openapi_types
        {
          :'access' => :'String',
          :'parent_folder_id' => :'String',
          :'name' => :'String',
          :'parent_folder_path' => :'String',
          :'clear_expires' => :'Boolean',
          :'is_usable_in_content' => :'Boolean',
          :'expires_at' => :'Time'
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
          fail ArgumentError, "The input argument (attributes) must be a hash in `Hubspot::Files::FileUpdateInput` initialize method"
        end

        # check to see if the attribute exists and convert string to symbol for hash key
        attributes = attributes.each_with_object({}) { |(k, v), h|
          if (!self.class.attribute_map.key?(k.to_sym))
            fail ArgumentError, "`#{k}` is not a valid attribute in `Hubspot::Files::FileUpdateInput`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
          end
          h[k.to_sym] = v
        }

        if attributes.key?(:'access')
          self.access = attributes[:'access']
        end

        if attributes.key?(:'parent_folder_id')
          self.parent_folder_id = attributes[:'parent_folder_id']
        end

        if attributes.key?(:'name')
          self.name = attributes[:'name']
        end

        if attributes.key?(:'parent_folder_path')
          self.parent_folder_path = attributes[:'parent_folder_path']
        end

        if attributes.key?(:'clear_expires')
          self.clear_expires = attributes[:'clear_expires']
        end

        if attributes.key?(:'is_usable_in_content')
          self.is_usable_in_content = attributes[:'is_usable_in_content']
        end

        if attributes.key?(:'expires_at')
          self.expires_at = attributes[:'expires_at']
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
        access_validator = EnumAttributeValidator.new('String', ["PUBLIC_INDEXABLE", "PUBLIC_NOT_INDEXABLE", "HIDDEN_INDEXABLE", "HIDDEN_NOT_INDEXABLE", "HIDDEN_PRIVATE", "PRIVATE", "HIDDEN_SENSITIVE", "SENSITIVE"])
        return false unless access_validator.valid?(@access)
        true
      end

      # Custom attribute writer method checking allowed values (enum).
      # @param [Object] access Object to be assigned
      def access=(access)
        validator = EnumAttributeValidator.new('String', ["PUBLIC_INDEXABLE", "PUBLIC_NOT_INDEXABLE", "HIDDEN_INDEXABLE", "HIDDEN_NOT_INDEXABLE", "HIDDEN_PRIVATE", "PRIVATE", "HIDDEN_SENSITIVE", "SENSITIVE"])
        unless validator.valid?(access)
          fail ArgumentError, "invalid value for \"access\", must be one of #{validator.allowable_values}."
        end
        @access = access
      end

      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            access == o.access &&
            parent_folder_id == o.parent_folder_id &&
            name == o.name &&
            parent_folder_path == o.parent_folder_path &&
            clear_expires == o.clear_expires &&
            is_usable_in_content == o.is_usable_in_content &&
            expires_at == o.expires_at
      end

      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end

      # Calculates hash code according to all attributes.
      # @return [Integer] Hash code
      def hash
        [access, parent_folder_id, name, parent_folder_path, clear_expires, is_usable_in_content, expires_at].hash
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
          klass = Hubspot::Files.const_get(type)
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
