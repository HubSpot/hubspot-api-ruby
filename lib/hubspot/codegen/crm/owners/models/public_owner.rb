=begin
#Crm Owners

#HubSpot uses **owners** to assign CRM objects to specific people in your organization. The endpoints described here are used to get a list of the owners that are available for an account. To assign an owner to an object, set the hubspot_owner_id property using the appropriate CRM object update or create a request.  If teams are available for your HubSpot tier, these endpoints will also indicate which team(s) an owner can access, as well as which team is the owner's primary team.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'date'
require 'time'

module Hubspot
  module Crm
    module Owners
      class PublicOwner
        attr_accessor :first_name

        attr_accessor :last_name

        attr_accessor :created_at

        attr_accessor :archived

        attr_accessor :teams

        attr_accessor :id

        attr_accessor :user_id_including_inactive

        attr_accessor :type

        attr_accessor :user_id

        attr_accessor :email

        attr_accessor :updated_at

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
            :'first_name' => :'firstName',
            :'last_name' => :'lastName',
            :'created_at' => :'createdAt',
            :'archived' => :'archived',
            :'teams' => :'teams',
            :'id' => :'id',
            :'user_id_including_inactive' => :'userIdIncludingInactive',
            :'type' => :'type',
            :'user_id' => :'userId',
            :'email' => :'email',
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
            :'first_name' => :'String',
            :'last_name' => :'String',
            :'created_at' => :'Time',
            :'archived' => :'Boolean',
            :'teams' => :'Array<PublicTeam>',
            :'id' => :'String',
            :'user_id_including_inactive' => :'Integer',
            :'type' => :'String',
            :'user_id' => :'Integer',
            :'email' => :'String',
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
            fail ArgumentError, "The input argument (attributes) must be a hash in `Hubspot::Crm::Owners::PublicOwner` initialize method"
          end

          # check to see if the attribute exists and convert string to symbol for hash key
          attributes = attributes.each_with_object({}) { |(k, v), h|
            if (!self.class.attribute_map.key?(k.to_sym))
              fail ArgumentError, "`#{k}` is not a valid attribute in `Hubspot::Crm::Owners::PublicOwner`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
            end
            h[k.to_sym] = v
          }

          if attributes.key?(:'first_name')
            self.first_name = attributes[:'first_name']
          end

          if attributes.key?(:'last_name')
            self.last_name = attributes[:'last_name']
          end

          if attributes.key?(:'created_at')
            self.created_at = attributes[:'created_at']
          end

          if attributes.key?(:'archived')
            self.archived = attributes[:'archived']
          end

          if attributes.key?(:'teams')
            if (value = attributes[:'teams']).is_a?(Array)
              self.teams = value
            end
          end

          if attributes.key?(:'id')
            self.id = attributes[:'id']
          end

          if attributes.key?(:'user_id_including_inactive')
            self.user_id_including_inactive = attributes[:'user_id_including_inactive']
          end

          if attributes.key?(:'type')
            self.type = attributes[:'type']
          end

          if attributes.key?(:'user_id')
            self.user_id = attributes[:'user_id']
          end

          if attributes.key?(:'email')
            self.email = attributes[:'email']
          end

          if attributes.key?(:'updated_at')
            self.updated_at = attributes[:'updated_at']
          end
        end

        # Show invalid properties with the reasons. Usually used together with valid?
        # @return Array for valid properties with the reasons
        def list_invalid_properties
          invalid_properties = Array.new
          if @created_at.nil?
            invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
          end

          if @archived.nil?
            invalid_properties.push('invalid value for "archived", archived cannot be nil.')
          end

          if @id.nil?
            invalid_properties.push('invalid value for "id", id cannot be nil.')
          end

          if @type.nil?
            invalid_properties.push('invalid value for "type", type cannot be nil.')
          end

          if @updated_at.nil?
            invalid_properties.push('invalid value for "updated_at", updated_at cannot be nil.')
          end

          invalid_properties
        end

        # Check to see if the all the properties in the model are valid
        # @return true if the model is valid
        def valid?
          return false if @created_at.nil?
          return false if @archived.nil?
          return false if @id.nil?
          return false if @type.nil?
          type_validator = EnumAttributeValidator.new('String', ["PERSON", "QUEUE"])
          return false unless type_validator.valid?(@type)
          return false if @updated_at.nil?
          true
        end

        # Custom attribute writer method checking allowed values (enum).
        # @param [Object] type Object to be assigned
        def type=(type)
          validator = EnumAttributeValidator.new('String', ["PERSON", "QUEUE"])
          unless validator.valid?(type)
            fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
          end
          @type = type
        end

        # Checks equality by comparing each attribute.
        # @param [Object] Object to be compared
        def ==(o)
          return true if self.equal?(o)
          self.class == o.class &&
              first_name == o.first_name &&
              last_name == o.last_name &&
              created_at == o.created_at &&
              archived == o.archived &&
              teams == o.teams &&
              id == o.id &&
              user_id_including_inactive == o.user_id_including_inactive &&
              type == o.type &&
              user_id == o.user_id &&
              email == o.email &&
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
          [first_name, last_name, created_at, archived, teams, id, user_id_including_inactive, type, user_id, email, updated_at].hash
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
            klass = Hubspot::Crm::Owners.const_get(type)
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
