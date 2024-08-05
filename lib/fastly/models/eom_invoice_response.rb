=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'date'
require 'time'

module Fastly
  class EomInvoiceResponse
    # Customer ID associated with the invoice.
    attr_accessor :customer_id

    # Alphanumeric string identifying the invoice.
    attr_accessor :invoice_id

    # Date and time invoice was posted on, in ISO 8601 format.
    attr_accessor :invoice_posted_on

    # Date and time (in ISO 8601 format) for initiation point of a billing cycle, signifying the start of charges for a service or subscription.
    attr_accessor :billing_start_date

    # Date and time (in ISO 8601 format) for termination point of a billing cycle, signifying the end of charges for a service or subscription.
    attr_accessor :billing_end_date

    # Alphanumeric string identifying the statement number.
    attr_accessor :statement_number

    # Three-letter code representing a specific currency used for financial transactions.
    attr_accessor :currency_code

    # Total billable amount for invoiced services charged within a single month.
    attr_accessor :monthly_transaction_amount

    attr_accessor :transaction_line_items

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'customer_id' => :'customer_id',
        :'invoice_id' => :'invoice_id',
        :'invoice_posted_on' => :'invoice_posted_on',
        :'billing_start_date' => :'billing_start_date',
        :'billing_end_date' => :'billing_end_date',
        :'statement_number' => :'statement_number',
        :'currency_code' => :'currency_code',
        :'monthly_transaction_amount' => :'monthly_transaction_amount',
        :'transaction_line_items' => :'transaction_line_items'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.fastly_types
      {
        :'customer_id' => :'String',
        :'invoice_id' => :'String',
        :'invoice_posted_on' => :'Time',
        :'billing_start_date' => :'Time',
        :'billing_end_date' => :'Time',
        :'statement_number' => :'String',
        :'currency_code' => :'String',
        :'monthly_transaction_amount' => :'Float',
        :'transaction_line_items' => :'Array<Invoicelineitems>'
      }
    end

    # List of attributes with nullable: true
    def self.fastly_nullable
      Set.new([
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.fastly_all_of
      [
      :'Invoice'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Fastly::EomInvoiceResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Fastly::EomInvoiceResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'customer_id')
        self.customer_id = attributes[:'customer_id']
      end

      if attributes.key?(:'invoice_id')
        self.invoice_id = attributes[:'invoice_id']
      end

      if attributes.key?(:'invoice_posted_on')
        self.invoice_posted_on = attributes[:'invoice_posted_on']
      end

      if attributes.key?(:'billing_start_date')
        self.billing_start_date = attributes[:'billing_start_date']
      end

      if attributes.key?(:'billing_end_date')
        self.billing_end_date = attributes[:'billing_end_date']
      end

      if attributes.key?(:'statement_number')
        self.statement_number = attributes[:'statement_number']
      end

      if attributes.key?(:'currency_code')
        self.currency_code = attributes[:'currency_code']
      end

      if attributes.key?(:'monthly_transaction_amount')
        self.monthly_transaction_amount = attributes[:'monthly_transaction_amount']
      end

      if attributes.key?(:'transaction_line_items')
        if (value = attributes[:'transaction_line_items']).is_a?(Array)
          self.transaction_line_items = value
        end
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
          customer_id == o.customer_id &&
          invoice_id == o.invoice_id &&
          invoice_posted_on == o.invoice_posted_on &&
          billing_start_date == o.billing_start_date &&
          billing_end_date == o.billing_end_date &&
          statement_number == o.statement_number &&
          currency_code == o.currency_code &&
          monthly_transaction_amount == o.monthly_transaction_amount &&
          transaction_line_items == o.transaction_line_items
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [customer_id, invoice_id, invoice_posted_on, billing_start_date, billing_end_date, statement_number, currency_code, monthly_transaction_amount, transaction_line_items].hash
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
      self.class.fastly_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.fastly_nullable.include?(key)
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
        klass = Fastly.const_get(type)
        klass.respond_to?(:fastly_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
          is_nullable = self.class.fastly_nullable.include?(attr)
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
