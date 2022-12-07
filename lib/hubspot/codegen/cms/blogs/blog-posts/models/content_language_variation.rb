=begin
#Blog Post endpoints

#Use these endpoints for interacting with Blog Posts, Blog Authors, and Blog Tags

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.2

=end

require 'date'

module Hubspot
  module Cms
    module Blogs
      module BlogPosts
        class ContentLanguageVariation
          attr_accessor :id

          attr_accessor :name

          attr_accessor :slug

          attr_accessor :state

          attr_accessor :author_name

          attr_accessor :password

          attr_accessor :public_access_rules_enabled

          attr_accessor :public_access_rules

          attr_accessor :campaign

          attr_accessor :tag_ids

          attr_accessor :archived_in_dashboard

          attr_accessor :created

          attr_accessor :updated

          attr_accessor :publish_date

          # Attribute mapping from ruby-style variable name to JSON key.
          def self.attribute_map
            {
              :'id' => :'id',
              :'name' => :'name',
              :'slug' => :'slug',
              :'state' => :'state',
              :'author_name' => :'authorName',
              :'password' => :'password',
              :'public_access_rules_enabled' => :'publicAccessRulesEnabled',
              :'public_access_rules' => :'publicAccessRules',
              :'campaign' => :'campaign',
              :'tag_ids' => :'tagIds',
              :'archived_in_dashboard' => :'archivedInDashboard',
              :'created' => :'created',
              :'updated' => :'updated',
              :'publish_date' => :'publishDate'
            }
          end

          # Attribute type mapping.
          def self.openapi_types
            {
              :'id' => :'Integer',
              :'name' => :'String',
              :'slug' => :'String',
              :'state' => :'String',
              :'author_name' => :'String',
              :'password' => :'String',
              :'public_access_rules_enabled' => :'Boolean',
              :'public_access_rules' => :'Array<Object>',
              :'campaign' => :'String',
              :'tag_ids' => :'Array<Integer>',
              :'archived_in_dashboard' => :'Boolean',
              :'created' => :'DateTime',
              :'updated' => :'DateTime',
              :'publish_date' => :'DateTime'
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
              fail ArgumentError, "The input argument (attributes) must be a hash in `Hubspot::Cms::Blogs::BlogPosts::ContentLanguageVariation` initialize method"
            end

            # check to see if the attribute exists and convert string to symbol for hash key
            attributes = attributes.each_with_object({}) { |(k, v), h|
              if (!self.class.attribute_map.key?(k.to_sym))
                fail ArgumentError, "`#{k}` is not a valid attribute in `Hubspot::Cms::Blogs::BlogPosts::ContentLanguageVariation`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
              end
              h[k.to_sym] = v
            }

            if attributes.key?(:'id')
              self.id = attributes[:'id']
            end

            if attributes.key?(:'name')
              self.name = attributes[:'name']
            end

            if attributes.key?(:'slug')
              self.slug = attributes[:'slug']
            end

            if attributes.key?(:'state')
              self.state = attributes[:'state']
            end

            if attributes.key?(:'author_name')
              self.author_name = attributes[:'author_name']
            end

            if attributes.key?(:'password')
              self.password = attributes[:'password']
            end

            if attributes.key?(:'public_access_rules_enabled')
              self.public_access_rules_enabled = attributes[:'public_access_rules_enabled']
            end

            if attributes.key?(:'public_access_rules')
              if (value = attributes[:'public_access_rules']).is_a?(Array)
                self.public_access_rules = value
              end
            end

            if attributes.key?(:'campaign')
              self.campaign = attributes[:'campaign']
            end

            if attributes.key?(:'tag_ids')
              if (value = attributes[:'tag_ids']).is_a?(Array)
                self.tag_ids = value
              end
            end

            if attributes.key?(:'archived_in_dashboard')
              self.archived_in_dashboard = attributes[:'archived_in_dashboard']
            end

            if attributes.key?(:'created')
              self.created = attributes[:'created']
            end

            if attributes.key?(:'updated')
              self.updated = attributes[:'updated']
            end

            if attributes.key?(:'publish_date')
              self.publish_date = attributes[:'publish_date']
            end
          end

          # Show invalid properties with the reasons. Usually used together with valid?
          # @return Array for valid properties with the reasons
          def list_invalid_properties
            invalid_properties = Array.new
            if @id.nil?
              invalid_properties.push('invalid value for "id", id cannot be nil.')
            end

            if @name.nil?
              invalid_properties.push('invalid value for "name", name cannot be nil.')
            end

            if @slug.nil?
              invalid_properties.push('invalid value for "slug", slug cannot be nil.')
            end

            if @state.nil?
              invalid_properties.push('invalid value for "state", state cannot be nil.')
            end

            if @author_name.nil?
              invalid_properties.push('invalid value for "author_name", author_name cannot be nil.')
            end

            if @password.nil?
              invalid_properties.push('invalid value for "password", password cannot be nil.')
            end

            if @public_access_rules_enabled.nil?
              invalid_properties.push('invalid value for "public_access_rules_enabled", public_access_rules_enabled cannot be nil.')
            end

            if @public_access_rules.nil?
              invalid_properties.push('invalid value for "public_access_rules", public_access_rules cannot be nil.')
            end

            if @campaign.nil?
              invalid_properties.push('invalid value for "campaign", campaign cannot be nil.')
            end

            if @archived_in_dashboard.nil?
              invalid_properties.push('invalid value for "archived_in_dashboard", archived_in_dashboard cannot be nil.')
            end

            if @created.nil?
              invalid_properties.push('invalid value for "created", created cannot be nil.')
            end

            if @updated.nil?
              invalid_properties.push('invalid value for "updated", updated cannot be nil.')
            end

            if @publish_date.nil?
              invalid_properties.push('invalid value for "publish_date", publish_date cannot be nil.')
            end

            invalid_properties
          end

          # Check to see if the all the properties in the model are valid
          # @return true if the model is valid
          def valid?
            return false if @id.nil?
            return false if @name.nil?
            return false if @slug.nil?
            return false if @state.nil?
            return false if @author_name.nil?
            return false if @password.nil?
            return false if @public_access_rules_enabled.nil?
            return false if @public_access_rules.nil?
            return false if @campaign.nil?
            return false if @archived_in_dashboard.nil?
            return false if @created.nil?
            return false if @updated.nil?
            return false if @publish_date.nil?
            true
          end

          # Checks equality by comparing each attribute.
          # @param [Object] Object to be compared
          def ==(o)
            return true if self.equal?(o)
            self.class == o.class &&
                id == o.id &&
                name == o.name &&
                slug == o.slug &&
                state == o.state &&
                author_name == o.author_name &&
                password == o.password &&
                public_access_rules_enabled == o.public_access_rules_enabled &&
                public_access_rules == o.public_access_rules &&
                campaign == o.campaign &&
                tag_ids == o.tag_ids &&
                archived_in_dashboard == o.archived_in_dashboard &&
                created == o.created &&
                updated == o.updated &&
                publish_date == o.publish_date
          end

          # @see the `==` method
          # @param [Object] Object to be compared
          def eql?(o)
            self == o
          end

          # Calculates hash code according to all attributes.
          # @return [Integer] Hash code
          def hash
            [id, name, slug, state, author_name, password, public_access_rules_enabled, public_access_rules, campaign, tag_ids, archived_in_dashboard, created, updated, publish_date].hash
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
              Hubspot::Cms::Blogs::BlogPosts.const_get(type).build_from_hash(value)
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
