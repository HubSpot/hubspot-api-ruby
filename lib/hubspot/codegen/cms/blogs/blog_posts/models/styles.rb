=begin
#Posts

#Use these endpoints for interacting with Blog Posts, Blog Authors, and Blog Tags

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'date'
require 'time'

module Hubspot
  module Cms
    module Blogs
      module BlogPosts
        class Styles
          attr_accessor :background_color

          attr_accessor :flexbox_positioning

          attr_accessor :background_image

          attr_accessor :force_full_width_section

          attr_accessor :breakpoint_styles

          attr_accessor :vertical_alignment

          attr_accessor :max_width_section_centering

          attr_accessor :background_gradient

          # Attribute mapping from ruby-style variable name to JSON key.
          def self.attribute_map
            {
              :'background_color' => :'backgroundColor',
              :'flexbox_positioning' => :'flexboxPositioning',
              :'background_image' => :'backgroundImage',
              :'force_full_width_section' => :'forceFullWidthSection',
              :'breakpoint_styles' => :'breakpointStyles',
              :'vertical_alignment' => :'verticalAlignment',
              :'max_width_section_centering' => :'maxWidthSectionCentering',
              :'background_gradient' => :'backgroundGradient'
            }
          end

          # Returns all the JSON keys this model knows about
          def self.acceptable_attributes
            attribute_map.values
          end

          # Attribute type mapping.
          def self.openapi_types
            {
              :'background_color' => :'RGBAColor',
              :'flexbox_positioning' => :'String',
              :'background_image' => :'BackgroundImage',
              :'force_full_width_section' => :'Boolean',
              :'breakpoint_styles' => :'Hash<String, BreakpointStyles>',
              :'vertical_alignment' => :'String',
              :'max_width_section_centering' => :'Integer',
              :'background_gradient' => :'Gradient'
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
              fail ArgumentError, "The input argument (attributes) must be a hash in `Hubspot::Cms::Blogs::BlogPosts::Styles` initialize method"
            end

            # check to see if the attribute exists and convert string to symbol for hash key
            attributes = attributes.each_with_object({}) { |(k, v), h|
              if (!self.class.attribute_map.key?(k.to_sym))
                fail ArgumentError, "`#{k}` is not a valid attribute in `Hubspot::Cms::Blogs::BlogPosts::Styles`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
              end
              h[k.to_sym] = v
            }

            if attributes.key?(:'background_color')
              self.background_color = attributes[:'background_color']
            end

            if attributes.key?(:'flexbox_positioning')
              self.flexbox_positioning = attributes[:'flexbox_positioning']
            end

            if attributes.key?(:'background_image')
              self.background_image = attributes[:'background_image']
            end

            if attributes.key?(:'force_full_width_section')
              self.force_full_width_section = attributes[:'force_full_width_section']
            end

            if attributes.key?(:'breakpoint_styles')
              if (value = attributes[:'breakpoint_styles']).is_a?(Hash)
                self.breakpoint_styles = value
              end
            end

            if attributes.key?(:'vertical_alignment')
              self.vertical_alignment = attributes[:'vertical_alignment']
            end

            if attributes.key?(:'max_width_section_centering')
              self.max_width_section_centering = attributes[:'max_width_section_centering']
            end

            if attributes.key?(:'background_gradient')
              self.background_gradient = attributes[:'background_gradient']
            end
          end

          # Show invalid properties with the reasons. Usually used together with valid?
          # @return Array for valid properties with the reasons
          def list_invalid_properties
            invalid_properties = Array.new
            if @background_color.nil?
              invalid_properties.push('invalid value for "background_color", background_color cannot be nil.')
            end

            if @flexbox_positioning.nil?
              invalid_properties.push('invalid value for "flexbox_positioning", flexbox_positioning cannot be nil.')
            end

            if @background_image.nil?
              invalid_properties.push('invalid value for "background_image", background_image cannot be nil.')
            end

            if @force_full_width_section.nil?
              invalid_properties.push('invalid value for "force_full_width_section", force_full_width_section cannot be nil.')
            end

            if @vertical_alignment.nil?
              invalid_properties.push('invalid value for "vertical_alignment", vertical_alignment cannot be nil.')
            end

            if @max_width_section_centering.nil?
              invalid_properties.push('invalid value for "max_width_section_centering", max_width_section_centering cannot be nil.')
            end

            if @background_gradient.nil?
              invalid_properties.push('invalid value for "background_gradient", background_gradient cannot be nil.')
            end

            invalid_properties
          end

          # Check to see if the all the properties in the model are valid
          # @return true if the model is valid
          def valid?
            return false if @background_color.nil?
            return false if @flexbox_positioning.nil?
            return false if @background_image.nil?
            return false if @force_full_width_section.nil?
            return false if @vertical_alignment.nil?
            return false if @max_width_section_centering.nil?
            return false if @background_gradient.nil?
            true
          end

          # Checks equality by comparing each attribute.
          # @param [Object] Object to be compared
          def ==(o)
            return true if self.equal?(o)
            self.class == o.class &&
                background_color == o.background_color &&
                flexbox_positioning == o.flexbox_positioning &&
                background_image == o.background_image &&
                force_full_width_section == o.force_full_width_section &&
                breakpoint_styles == o.breakpoint_styles &&
                vertical_alignment == o.vertical_alignment &&
                max_width_section_centering == o.max_width_section_centering &&
                background_gradient == o.background_gradient
          end

          # @see the `==` method
          # @param [Object] Object to be compared
          def eql?(o)
            self == o
          end

          # Calculates hash code according to all attributes.
          # @return [Integer] Hash code
          def hash
            [background_color, flexbox_positioning, background_image, force_full_width_section, breakpoint_styles, vertical_alignment, max_width_section_centering, background_gradient].hash
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
              klass = Hubspot::Cms::Blogs::BlogPosts.const_get(type)
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
