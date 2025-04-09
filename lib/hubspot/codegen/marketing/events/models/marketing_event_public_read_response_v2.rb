=begin
#Marketing Events

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'date'
require 'time'

module Hubspot
  module Marketing
    module Events
      class MarketingEventPublicReadResponseV2
        attr_accessor :registrants

        attr_accessor :event_organizer

        attr_accessor :event_url

        attr_accessor :attendees

        attr_accessor :app_info

        attr_accessor :event_type

        attr_accessor :event_completed

        attr_accessor :end_date_time

        attr_accessor :no_shows

        attr_accessor :cancellations

        attr_accessor :created_at

        attr_accessor :start_date_time

        attr_accessor :custom_properties

        attr_accessor :event_cancelled

        attr_accessor :external_event_id

        attr_accessor :event_status

        attr_accessor :event_description

        attr_accessor :event_name

        attr_accessor :object_id

        attr_accessor :updated_at

        # Attribute mapping from ruby-style variable name to JSON key.
        def self.attribute_map
          {
            :'registrants' => :'registrants',
            :'event_organizer' => :'eventOrganizer',
            :'event_url' => :'eventUrl',
            :'attendees' => :'attendees',
            :'app_info' => :'appInfo',
            :'event_type' => :'eventType',
            :'event_completed' => :'eventCompleted',
            :'end_date_time' => :'endDateTime',
            :'no_shows' => :'noShows',
            :'cancellations' => :'cancellations',
            :'created_at' => :'createdAt',
            :'start_date_time' => :'startDateTime',
            :'custom_properties' => :'customProperties',
            :'event_cancelled' => :'eventCancelled',
            :'external_event_id' => :'externalEventId',
            :'event_status' => :'eventStatus',
            :'event_description' => :'eventDescription',
            :'event_name' => :'eventName',
            :'object_id' => :'objectId',
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
            :'registrants' => :'Integer',
            :'event_organizer' => :'String',
            :'event_url' => :'String',
            :'attendees' => :'Integer',
            :'app_info' => :'AppInfo',
            :'event_type' => :'String',
            :'event_completed' => :'Boolean',
            :'end_date_time' => :'Time',
            :'no_shows' => :'Integer',
            :'cancellations' => :'Integer',
            :'created_at' => :'Time',
            :'start_date_time' => :'Time',
            :'custom_properties' => :'Array<CrmPropertyWrapper>',
            :'event_cancelled' => :'Boolean',
            :'external_event_id' => :'String',
            :'event_status' => :'String',
            :'event_description' => :'String',
            :'event_name' => :'String',
            :'object_id' => :'String',
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
            fail ArgumentError, "The input argument (attributes) must be a hash in `Hubspot::Marketing::Events::MarketingEventPublicReadResponseV2` initialize method"
          end

          # check to see if the attribute exists and convert string to symbol for hash key
          attributes = attributes.each_with_object({}) { |(k, v), h|
            if (!self.class.attribute_map.key?(k.to_sym))
              fail ArgumentError, "`#{k}` is not a valid attribute in `Hubspot::Marketing::Events::MarketingEventPublicReadResponseV2`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
            end
            h[k.to_sym] = v
          }

          if attributes.key?(:'registrants')
            self.registrants = attributes[:'registrants']
          end

          if attributes.key?(:'event_organizer')
            self.event_organizer = attributes[:'event_organizer']
          end

          if attributes.key?(:'event_url')
            self.event_url = attributes[:'event_url']
          end

          if attributes.key?(:'attendees')
            self.attendees = attributes[:'attendees']
          end

          if attributes.key?(:'app_info')
            self.app_info = attributes[:'app_info']
          end

          if attributes.key?(:'event_type')
            self.event_type = attributes[:'event_type']
          end

          if attributes.key?(:'event_completed')
            self.event_completed = attributes[:'event_completed']
          end

          if attributes.key?(:'end_date_time')
            self.end_date_time = attributes[:'end_date_time']
          end

          if attributes.key?(:'no_shows')
            self.no_shows = attributes[:'no_shows']
          end

          if attributes.key?(:'cancellations')
            self.cancellations = attributes[:'cancellations']
          end

          if attributes.key?(:'created_at')
            self.created_at = attributes[:'created_at']
          end

          if attributes.key?(:'start_date_time')
            self.start_date_time = attributes[:'start_date_time']
          end

          if attributes.key?(:'custom_properties')
            if (value = attributes[:'custom_properties']).is_a?(Array)
              self.custom_properties = value
            end
          end

          if attributes.key?(:'event_cancelled')
            self.event_cancelled = attributes[:'event_cancelled']
          end

          if attributes.key?(:'external_event_id')
            self.external_event_id = attributes[:'external_event_id']
          end

          if attributes.key?(:'event_status')
            self.event_status = attributes[:'event_status']
          end

          if attributes.key?(:'event_description')
            self.event_description = attributes[:'event_description']
          end

          if attributes.key?(:'event_name')
            self.event_name = attributes[:'event_name']
          end

          if attributes.key?(:'object_id')
            self.object_id = attributes[:'object_id']
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

          if @custom_properties.nil?
            invalid_properties.push('invalid value for "custom_properties", custom_properties cannot be nil.')
          end

          if @event_name.nil?
            invalid_properties.push('invalid value for "event_name", event_name cannot be nil.')
          end

          if @object_id.nil?
            invalid_properties.push('invalid value for "object_id", object_id cannot be nil.')
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
          return false if @custom_properties.nil?
          return false if @event_name.nil?
          return false if @object_id.nil?
          return false if @updated_at.nil?
          true
        end

        # Checks equality by comparing each attribute.
        # @param [Object] Object to be compared
        def ==(o)
          return true if self.equal?(o)
          self.class == o.class &&
              registrants == o.registrants &&
              event_organizer == o.event_organizer &&
              event_url == o.event_url &&
              attendees == o.attendees &&
              app_info == o.app_info &&
              event_type == o.event_type &&
              event_completed == o.event_completed &&
              end_date_time == o.end_date_time &&
              no_shows == o.no_shows &&
              cancellations == o.cancellations &&
              created_at == o.created_at &&
              start_date_time == o.start_date_time &&
              custom_properties == o.custom_properties &&
              event_cancelled == o.event_cancelled &&
              external_event_id == o.external_event_id &&
              event_status == o.event_status &&
              event_description == o.event_description &&
              event_name == o.event_name &&
              object_id == o.object_id &&
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
          [registrants, event_organizer, event_url, attendees, app_info, event_type, event_completed, end_date_time, no_shows, cancellations, created_at, start_date_time, custom_properties, event_cancelled, external_event_id, event_status, event_description, event_name, object_id, updated_at].hash
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
            klass = Hubspot::Marketing::Events.const_get(type)
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
