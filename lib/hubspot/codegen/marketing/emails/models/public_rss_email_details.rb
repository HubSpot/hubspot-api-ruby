=begin
#Marketing Emails

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'date'
require 'time'

module Hubspot
  module Marketing
    module Emails
      # RSS related data if it is a blog or rss email.
      class PublicRssEmailDetails
        # 
        attr_accessor :blog_image_max_width

        # 
        attr_accessor :blog_email_type

        # 
        attr_accessor :hubspot_blog_id

        # 
        attr_accessor :rss_entry_template

        # 
        attr_accessor :timing

        # 
        attr_accessor :max_entries

        # 
        attr_accessor :use_headline_as_subject

        # 
        attr_accessor :blog_layout

        # 
        attr_accessor :url

        # Attribute mapping from ruby-style variable name to JSON key.
        def self.attribute_map
          {
            :'blog_image_max_width' => :'blogImageMaxWidth',
            :'blog_email_type' => :'blogEmailType',
            :'hubspot_blog_id' => :'hubspotBlogId',
            :'rss_entry_template' => :'rssEntryTemplate',
            :'timing' => :'timing',
            :'max_entries' => :'maxEntries',
            :'use_headline_as_subject' => :'useHeadlineAsSubject',
            :'blog_layout' => :'blogLayout',
            :'url' => :'url'
          }
        end

        # Returns all the JSON keys this model knows about
        def self.acceptable_attributes
          attribute_map.values
        end

        # Attribute type mapping.
        def self.openapi_types
          {
            :'blog_image_max_width' => :'Integer',
            :'blog_email_type' => :'String',
            :'hubspot_blog_id' => :'String',
            :'rss_entry_template' => :'String',
            :'timing' => :'Hash<String, Object>',
            :'max_entries' => :'Integer',
            :'use_headline_as_subject' => :'Boolean',
            :'blog_layout' => :'String',
            :'url' => :'String'
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
            fail ArgumentError, "The input argument (attributes) must be a hash in `Hubspot::Marketing::Emails::PublicRssEmailDetails` initialize method"
          end

          # check to see if the attribute exists and convert string to symbol for hash key
          attributes = attributes.each_with_object({}) { |(k, v), h|
            if (!self.class.attribute_map.key?(k.to_sym))
              fail ArgumentError, "`#{k}` is not a valid attribute in `Hubspot::Marketing::Emails::PublicRssEmailDetails`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
            end
            h[k.to_sym] = v
          }

          if attributes.key?(:'blog_image_max_width')
            self.blog_image_max_width = attributes[:'blog_image_max_width']
          end

          if attributes.key?(:'blog_email_type')
            self.blog_email_type = attributes[:'blog_email_type']
          end

          if attributes.key?(:'hubspot_blog_id')
            self.hubspot_blog_id = attributes[:'hubspot_blog_id']
          end

          if attributes.key?(:'rss_entry_template')
            self.rss_entry_template = attributes[:'rss_entry_template']
          end

          if attributes.key?(:'timing')
            if (value = attributes[:'timing']).is_a?(Hash)
              self.timing = value
            end
          end

          if attributes.key?(:'max_entries')
            self.max_entries = attributes[:'max_entries']
          end

          if attributes.key?(:'use_headline_as_subject')
            self.use_headline_as_subject = attributes[:'use_headline_as_subject']
          end

          if attributes.key?(:'blog_layout')
            self.blog_layout = attributes[:'blog_layout']
          end

          if attributes.key?(:'url')
            self.url = attributes[:'url']
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
              blog_image_max_width == o.blog_image_max_width &&
              blog_email_type == o.blog_email_type &&
              hubspot_blog_id == o.hubspot_blog_id &&
              rss_entry_template == o.rss_entry_template &&
              timing == o.timing &&
              max_entries == o.max_entries &&
              use_headline_as_subject == o.use_headline_as_subject &&
              blog_layout == o.blog_layout &&
              url == o.url
        end

        # @see the `==` method
        # @param [Object] Object to be compared
        def eql?(o)
          self == o
        end

        # Calculates hash code according to all attributes.
        # @return [Integer] Hash code
        def hash
          [blog_image_max_width, blog_email_type, hubspot_blog_id, rss_entry_template, timing, max_entries, use_headline_as_subject, blog_layout, url].hash
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
            klass = Hubspot::Marketing::Emails.const_get(type)
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
