=begin
#Tasks

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'date'
require 'time'

module Hubspot
  module Crm
    module Objects
      module Tasks
        class BatchResponseSimplePublicUpsertObject
          attr_accessor :completed_at

          attr_accessor :requested_at

          attr_accessor :started_at

          attr_accessor :links

          attr_accessor :results

          attr_accessor :status

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
              :'completed_at' => :'completedAt',
              :'requested_at' => :'requestedAt',
              :'started_at' => :'startedAt',
              :'links' => :'links',
              :'results' => :'results',
              :'status' => :'status'
            }
          end

          # Returns all the JSON keys this model knows about
          def self.acceptable_attributes
            attribute_map.values
          end

          # Attribute type mapping.
          def self.openapi_types
            {
              :'completed_at' => :'Time',
              :'requested_at' => :'Time',
              :'started_at' => :'Time',
              :'links' => :'Hash<String, String>',
              :'results' => :'Array<SimplePublicUpsertObject>',
              :'status' => :'String'
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
              fail ArgumentError, "The input argument (attributes) must be a hash in `Hubspot::Crm::Objects::Tasks::BatchResponseSimplePublicUpsertObject` initialize method"
            end

            # check to see if the attribute exists and convert string to symbol for hash key
            attributes = attributes.each_with_object({}) { |(k, v), h|
              if (!self.class.attribute_map.key?(k.to_sym))
                fail ArgumentError, "`#{k}` is not a valid attribute in `Hubspot::Crm::Objects::Tasks::BatchResponseSimplePublicUpsertObject`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
              end
              h[k.to_sym] = v
            }

            if attributes.key?(:'completed_at')
              self.completed_at = attributes[:'completed_at']
            end

            if attributes.key?(:'requested_at')
              self.requested_at = attributes[:'requested_at']
            end

            if attributes.key?(:'started_at')
              self.started_at = attributes[:'started_at']
            end

            if attributes.key?(:'links')
              if (value = attributes[:'links']).is_a?(Hash)
                self.links = value
              end
            end

            if attributes.key?(:'results')
              if (value = attributes[:'results']).is_a?(Array)
                self.results = value
              end
            end

            if attributes.key?(:'status')
              self.status = attributes[:'status']
            end
          end

          # Show invalid properties with the reasons. Usually used together with valid?
          # @return Array for valid properties with the reasons
          def list_invalid_properties
            invalid_properties = Array.new
            if @completed_at.nil?
              invalid_properties.push('invalid value for "completed_at", completed_at cannot be nil.')
            end

            if @started_at.nil?
              invalid_properties.push('invalid value for "started_at", started_at cannot be nil.')
            end

            if @results.nil?
              invalid_properties.push('invalid value for "results", results cannot be nil.')
            end

            if @status.nil?
              invalid_properties.push('invalid value for "status", status cannot be nil.')
            end

            invalid_properties
          end

          # Check to see if the all the properties in the model are valid
          # @return true if the model is valid
          def valid?
            return false if @completed_at.nil?
            return false if @started_at.nil?
            return false if @results.nil?
            return false if @status.nil?
            status_validator = EnumAttributeValidator.new('String', ["PENDING", "PROCESSING", "CANCELED", "COMPLETE"])
            return false unless status_validator.valid?(@status)
            true
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
                completed_at == o.completed_at &&
                requested_at == o.requested_at &&
                started_at == o.started_at &&
                links == o.links &&
                results == o.results &&
                status == o.status
          end

          # @see the `==` method
          # @param [Object] Object to be compared
          def eql?(o)
            self == o
          end

          # Calculates hash code according to all attributes.
          # @return [Integer] Hash code
          def hash
            [completed_at, requested_at, started_at, links, results, status].hash
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
              klass = Hubspot::Crm::Objects::Tasks.const_get(type)
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
end
