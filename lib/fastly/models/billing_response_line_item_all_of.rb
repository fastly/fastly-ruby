=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0


=end

require 'date'
require 'time'

module Fastly
  class BillingResponseLineItemAllOf
    attr_accessor :amount

    attr_accessor :aria_invoice_id

    attr_accessor :client_service_id

    attr_accessor :credit_coupon_code

    attr_accessor :description

    attr_accessor :id

    attr_accessor :line_number

    attr_accessor :plan_name

    attr_accessor :plan_no

    attr_accessor :rate_per_unit

    attr_accessor :rate_schedule_no

    attr_accessor :rate_schedule_tier_no

    attr_accessor :service_name

    attr_accessor :service_no

    attr_accessor :units

    attr_accessor :usage_type_cd

    attr_accessor :usage_type_no

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'amount' => :'amount',
        :'aria_invoice_id' => :'aria_invoice_id',
        :'client_service_id' => :'client_service_id',
        :'credit_coupon_code' => :'credit_coupon_code',
        :'description' => :'description',
        :'id' => :'id',
        :'line_number' => :'line_number',
        :'plan_name' => :'plan_name',
        :'plan_no' => :'plan_no',
        :'rate_per_unit' => :'rate_per_unit',
        :'rate_schedule_no' => :'rate_schedule_no',
        :'rate_schedule_tier_no' => :'rate_schedule_tier_no',
        :'service_name' => :'service_name',
        :'service_no' => :'service_no',
        :'units' => :'units',
        :'usage_type_cd' => :'usage_type_cd',
        :'usage_type_no' => :'usage_type_no'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.fastly_types
      {
        :'amount' => :'Float',
        :'aria_invoice_id' => :'String',
        :'client_service_id' => :'String',
        :'credit_coupon_code' => :'String',
        :'description' => :'String',
        :'id' => :'String',
        :'line_number' => :'Integer',
        :'plan_name' => :'String',
        :'plan_no' => :'Float',
        :'rate_per_unit' => :'Float',
        :'rate_schedule_no' => :'Float',
        :'rate_schedule_tier_no' => :'Float',
        :'service_name' => :'String',
        :'service_no' => :'Float',
        :'units' => :'Float',
        :'usage_type_cd' => :'String',
        :'usage_type_no' => :'Float'
      }
    end

    # List of attributes with nullable: true
    def self.fastly_nullable
      Set.new([
        :'aria_invoice_id',
        :'credit_coupon_code',
        :'rate_schedule_no',
        :'rate_schedule_tier_no',
        :'usage_type_cd',
        :'usage_type_no'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Fastly::BillingResponseLineItemAllOf` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Fastly::BillingResponseLineItemAllOf`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'aria_invoice_id')
        self.aria_invoice_id = attributes[:'aria_invoice_id']
      end

      if attributes.key?(:'client_service_id')
        self.client_service_id = attributes[:'client_service_id']
      end

      if attributes.key?(:'credit_coupon_code')
        self.credit_coupon_code = attributes[:'credit_coupon_code']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'line_number')
        self.line_number = attributes[:'line_number']
      end

      if attributes.key?(:'plan_name')
        self.plan_name = attributes[:'plan_name']
      end

      if attributes.key?(:'plan_no')
        self.plan_no = attributes[:'plan_no']
      end

      if attributes.key?(:'rate_per_unit')
        self.rate_per_unit = attributes[:'rate_per_unit']
      end

      if attributes.key?(:'rate_schedule_no')
        self.rate_schedule_no = attributes[:'rate_schedule_no']
      end

      if attributes.key?(:'rate_schedule_tier_no')
        self.rate_schedule_tier_no = attributes[:'rate_schedule_tier_no']
      end

      if attributes.key?(:'service_name')
        self.service_name = attributes[:'service_name']
      end

      if attributes.key?(:'service_no')
        self.service_no = attributes[:'service_no']
      end

      if attributes.key?(:'units')
        self.units = attributes[:'units']
      end

      if attributes.key?(:'usage_type_cd')
        self.usage_type_cd = attributes[:'usage_type_cd']
      end

      if attributes.key?(:'usage_type_no')
        self.usage_type_no = attributes[:'usage_type_no']
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
          amount == o.amount &&
          aria_invoice_id == o.aria_invoice_id &&
          client_service_id == o.client_service_id &&
          credit_coupon_code == o.credit_coupon_code &&
          description == o.description &&
          id == o.id &&
          line_number == o.line_number &&
          plan_name == o.plan_name &&
          plan_no == o.plan_no &&
          rate_per_unit == o.rate_per_unit &&
          rate_schedule_no == o.rate_schedule_no &&
          rate_schedule_tier_no == o.rate_schedule_tier_no &&
          service_name == o.service_name &&
          service_no == o.service_no &&
          units == o.units &&
          usage_type_cd == o.usage_type_cd &&
          usage_type_no == o.usage_type_no
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [amount, aria_invoice_id, client_service_id, credit_coupon_code, description, id, line_number, plan_name, plan_no, rate_per_unit, rate_schedule_no, rate_schedule_tier_no, service_name, service_no, units, usage_type_cd, usage_type_no].hash
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
