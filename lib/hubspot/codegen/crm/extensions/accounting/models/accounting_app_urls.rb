=begin
#Accounting Extension

#These APIs allow you to interact with HubSpot's Accounting Extension. It allows you to: * Specify the URLs that HubSpot will use when making webhook requests to your external accounting system. * Respond to webhook calls made to your external accounting system by HubSpot 

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.2

=end

require 'date'

module Hubspot
  module Crm
    module Extensions
      module Accounting
        class AccountingAppUrls
          # A URL that specifies the endpoint where invoices can be retrieved.
          attr_accessor :get_invoice_url

          # A URL that specifies the endpoint where a customer search can be performed.
          attr_accessor :search_customer_url

          # A URL that specifies the endpoint where an invoice PDF can be retrieved.
          attr_accessor :get_invoice_pdf_url

          # A template URL that indicates the endpoint where a customer can be fetched by ID. Note that ${CUSTOMER_ID} in this URL will be replaced by the actual customer ID. For example: https://myapp.com/api/customers/${CUSTOMER_ID}
          attr_accessor :customer_url_template

          # A template URL that indicates the endpoint where a product can be fetched by ID. Note that ${PRODUCT_ID} in this URL will be replaced by the actual product ID. For example: https://myapp.com/api/products/${PRODUCT_ID}
          attr_accessor :product_url_template

          # A template URL that indicates the endpoint where an invoice can be fetched by ID. Note that ${INVOICE_ID} in this URL will be replaced by the actual invoice ID. For example: https://myapp.com/api/invoices/${INVOICE_ID}
          attr_accessor :invoice_url_template

          # A URL that specifies the endpoint where an invoices can be created.
          attr_accessor :create_invoice_url

          # A URL that specifies the endpoint where an invoice search can be performed.
          attr_accessor :search_invoice_url

          # A URL that specifies the endpoint where a product search can be performed.
          attr_accessor :search_product_url

          # A URL that specifies the endpoint where payment terms can be retrieved.
          attr_accessor :get_terms_url

          # A URL that specifies the endpoint where a new customer can be created.
          attr_accessor :create_customer_url

          # A URL that specifies the endpoint where a tax search can be performed.
          attr_accessor :search_tax_url

          # A URL that specifies the endpoint where exchange rates can be queried.
          attr_accessor :exchange_rate_url

          attr_accessor :search_url

          attr_accessor :search_count_url

          # Attribute mapping from ruby-style variable name to JSON key.
          def self.attribute_map
            {
              :'get_invoice_url' => :'getInvoiceUrl',
              :'search_customer_url' => :'searchCustomerUrl',
              :'get_invoice_pdf_url' => :'getInvoicePdfUrl',
              :'customer_url_template' => :'customerUrlTemplate',
              :'product_url_template' => :'productUrlTemplate',
              :'invoice_url_template' => :'invoiceUrlTemplate',
              :'create_invoice_url' => :'createInvoiceUrl',
              :'search_invoice_url' => :'searchInvoiceUrl',
              :'search_product_url' => :'searchProductUrl',
              :'get_terms_url' => :'getTermsUrl',
              :'create_customer_url' => :'createCustomerUrl',
              :'search_tax_url' => :'searchTaxUrl',
              :'exchange_rate_url' => :'exchangeRateUrl',
              :'search_url' => :'searchUrl',
              :'search_count_url' => :'searchCountUrl'
            }
          end

          # Attribute type mapping.
          def self.openapi_types
            {
              :'get_invoice_url' => :'String',
              :'search_customer_url' => :'String',
              :'get_invoice_pdf_url' => :'String',
              :'customer_url_template' => :'String',
              :'product_url_template' => :'String',
              :'invoice_url_template' => :'String',
              :'create_invoice_url' => :'String',
              :'search_invoice_url' => :'String',
              :'search_product_url' => :'String',
              :'get_terms_url' => :'String',
              :'create_customer_url' => :'String',
              :'search_tax_url' => :'String',
              :'exchange_rate_url' => :'String',
              :'search_url' => :'String',
              :'search_count_url' => :'String'
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
              fail ArgumentError, "The input argument (attributes) must be a hash in `Hubspot::Crm::Extensions::Accounting::AccountingAppUrls` initialize method"
            end

            # check to see if the attribute exists and convert string to symbol for hash key
            attributes = attributes.each_with_object({}) { |(k, v), h|
              if (!self.class.attribute_map.key?(k.to_sym))
                fail ArgumentError, "`#{k}` is not a valid attribute in `Hubspot::Crm::Extensions::Accounting::AccountingAppUrls`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
              end
              h[k.to_sym] = v
            }

            if attributes.key?(:'get_invoice_url')
              self.get_invoice_url = attributes[:'get_invoice_url']
            end

            if attributes.key?(:'search_customer_url')
              self.search_customer_url = attributes[:'search_customer_url']
            end

            if attributes.key?(:'get_invoice_pdf_url')
              self.get_invoice_pdf_url = attributes[:'get_invoice_pdf_url']
            end

            if attributes.key?(:'customer_url_template')
              self.customer_url_template = attributes[:'customer_url_template']
            end

            if attributes.key?(:'product_url_template')
              self.product_url_template = attributes[:'product_url_template']
            end

            if attributes.key?(:'invoice_url_template')
              self.invoice_url_template = attributes[:'invoice_url_template']
            end

            if attributes.key?(:'create_invoice_url')
              self.create_invoice_url = attributes[:'create_invoice_url']
            end

            if attributes.key?(:'search_invoice_url')
              self.search_invoice_url = attributes[:'search_invoice_url']
            end

            if attributes.key?(:'search_product_url')
              self.search_product_url = attributes[:'search_product_url']
            end

            if attributes.key?(:'get_terms_url')
              self.get_terms_url = attributes[:'get_terms_url']
            end

            if attributes.key?(:'create_customer_url')
              self.create_customer_url = attributes[:'create_customer_url']
            end

            if attributes.key?(:'search_tax_url')
              self.search_tax_url = attributes[:'search_tax_url']
            end

            if attributes.key?(:'exchange_rate_url')
              self.exchange_rate_url = attributes[:'exchange_rate_url']
            end

            if attributes.key?(:'search_url')
              self.search_url = attributes[:'search_url']
            end

            if attributes.key?(:'search_count_url')
              self.search_count_url = attributes[:'search_count_url']
            end
          end

          # Show invalid properties with the reasons. Usually used together with valid?
          # @return Array for valid properties with the reasons
          def list_invalid_properties
            invalid_properties = Array.new
            if @get_invoice_url.nil?
              invalid_properties.push('invalid value for "get_invoice_url", get_invoice_url cannot be nil.')
            end

            if @search_customer_url.nil?
              invalid_properties.push('invalid value for "search_customer_url", search_customer_url cannot be nil.')
            end

            if @get_invoice_pdf_url.nil?
              invalid_properties.push('invalid value for "get_invoice_pdf_url", get_invoice_pdf_url cannot be nil.')
            end

            if @customer_url_template.nil?
              invalid_properties.push('invalid value for "customer_url_template", customer_url_template cannot be nil.')
            end

            if @product_url_template.nil?
              invalid_properties.push('invalid value for "product_url_template", product_url_template cannot be nil.')
            end

            if @invoice_url_template.nil?
              invalid_properties.push('invalid value for "invoice_url_template", invoice_url_template cannot be nil.')
            end

            invalid_properties
          end

          # Check to see if the all the properties in the model are valid
          # @return true if the model is valid
          def valid?
            return false if @get_invoice_url.nil?
            return false if @search_customer_url.nil?
            return false if @get_invoice_pdf_url.nil?
            return false if @customer_url_template.nil?
            return false if @product_url_template.nil?
            return false if @invoice_url_template.nil?
            true
          end

          # Checks equality by comparing each attribute.
          # @param [Object] Object to be compared
          def ==(o)
            return true if self.equal?(o)
            self.class == o.class &&
                get_invoice_url == o.get_invoice_url &&
                search_customer_url == o.search_customer_url &&
                get_invoice_pdf_url == o.get_invoice_pdf_url &&
                customer_url_template == o.customer_url_template &&
                product_url_template == o.product_url_template &&
                invoice_url_template == o.invoice_url_template &&
                create_invoice_url == o.create_invoice_url &&
                search_invoice_url == o.search_invoice_url &&
                search_product_url == o.search_product_url &&
                get_terms_url == o.get_terms_url &&
                create_customer_url == o.create_customer_url &&
                search_tax_url == o.search_tax_url &&
                exchange_rate_url == o.exchange_rate_url &&
                search_url == o.search_url &&
                search_count_url == o.search_count_url
          end

          # @see the `==` method
          # @param [Object] Object to be compared
          def eql?(o)
            self == o
          end

          # Calculates hash code according to all attributes.
          # @return [Integer] Hash code
          def hash
            [get_invoice_url, search_customer_url, get_invoice_pdf_url, customer_url_template, product_url_template, invoice_url_template, create_invoice_url, search_invoice_url, search_product_url, get_terms_url, create_customer_url, search_tax_url, exchange_rate_url, search_url, search_count_url].hash
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
              Hubspot::Crm::Extensions::Accounting.const_get(type).build_from_hash(value)
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
