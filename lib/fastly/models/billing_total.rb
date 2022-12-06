=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'date'
require 'time'

module Fastly
  # Complete summary of the billing information.
  class BillingTotal
    # The total amount of bandwidth used this month (See bandwidth_units for measurement).
    attr_accessor :bandwidth

    # The cost of the bandwidth used this month in USD.
    attr_accessor :bandwidth_cost

    # Bandwidth measurement units based on billing plan.
    attr_accessor :bandwidth_units

    # The final amount to be paid.
    attr_accessor :cost

    # Total incurred cost plus extras cost.
    attr_accessor :cost_before_discount

    # Calculated discount rate.
    attr_accessor :discount

    # A list of any extras for this invoice.
    attr_accessor :extras

    # Total cost of all extras.
    attr_accessor :extras_cost

    # The total cost of bandwidth and requests used this month.
    attr_accessor :incurred_cost

    # How much over the plan minimum has been incurred.
    attr_accessor :overage

    # The short code the plan this invoice was generated under.
    attr_accessor :plan_code

    # The minimum cost of this plan.
    attr_accessor :plan_minimum

    # The name of the plan this invoice was generated under.
    attr_accessor :plan_name

    # The total number of requests used this month.
    attr_accessor :requests

    # The cost of the requests used this month.
    attr_accessor :requests_cost

    # Payment terms. Almost always Net15.
    attr_accessor :terms

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'bandwidth' => :'bandwidth',
        :'bandwidth_cost' => :'bandwidth_cost',
        :'bandwidth_units' => :'bandwidth_units',
        :'cost' => :'cost',
        :'cost_before_discount' => :'cost_before_discount',
        :'discount' => :'discount',
        :'extras' => :'extras',
        :'extras_cost' => :'extras_cost',
        :'incurred_cost' => :'incurred_cost',
        :'overage' => :'overage',
        :'plan_code' => :'plan_code',
        :'plan_minimum' => :'plan_minimum',
        :'plan_name' => :'plan_name',
        :'requests' => :'requests',
        :'requests_cost' => :'requests_cost',
        :'terms' => :'terms'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.fastly_types
      {
        :'bandwidth' => :'Float',
        :'bandwidth_cost' => :'Float',
        :'bandwidth_units' => :'String',
        :'cost' => :'Float',
        :'cost_before_discount' => :'Float',
        :'discount' => :'Float',
        :'extras' => :'Array<BillingTotalExtras>',
        :'extras_cost' => :'Float',
        :'incurred_cost' => :'Float',
        :'overage' => :'Float',
        :'plan_code' => :'String',
        :'plan_minimum' => :'Float',
        :'plan_name' => :'String',
        :'requests' => :'Float',
        :'requests_cost' => :'Float',
        :'terms' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.fastly_nullable
      Set.new([
        :'bandwidth_units',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Fastly::BillingTotal` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Fastly::BillingTotal`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'bandwidth')
        self.bandwidth = attributes[:'bandwidth']
      end

      if attributes.key?(:'bandwidth_cost')
        self.bandwidth_cost = attributes[:'bandwidth_cost']
      end

      if attributes.key?(:'bandwidth_units')
        self.bandwidth_units = attributes[:'bandwidth_units']
      end

      if attributes.key?(:'cost')
        self.cost = attributes[:'cost']
      end

      if attributes.key?(:'cost_before_discount')
        self.cost_before_discount = attributes[:'cost_before_discount']
      end

      if attributes.key?(:'discount')
        self.discount = attributes[:'discount']
      end

      if attributes.key?(:'extras')
        if (value = attributes[:'extras']).is_a?(Array)
          self.extras = value
        end
      end

      if attributes.key?(:'extras_cost')
        self.extras_cost = attributes[:'extras_cost']
      end

      if attributes.key?(:'incurred_cost')
        self.incurred_cost = attributes[:'incurred_cost']
      end

      if attributes.key?(:'overage')
        self.overage = attributes[:'overage']
      end

      if attributes.key?(:'plan_code')
        self.plan_code = attributes[:'plan_code']
      end

      if attributes.key?(:'plan_minimum')
        self.plan_minimum = attributes[:'plan_minimum']
      end

      if attributes.key?(:'plan_name')
        self.plan_name = attributes[:'plan_name']
      end

      if attributes.key?(:'requests')
        self.requests = attributes[:'requests']
      end

      if attributes.key?(:'requests_cost')
        self.requests_cost = attributes[:'requests_cost']
      end

      if attributes.key?(:'terms')
        self.terms = attributes[:'terms']
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
          bandwidth == o.bandwidth &&
          bandwidth_cost == o.bandwidth_cost &&
          bandwidth_units == o.bandwidth_units &&
          cost == o.cost &&
          cost_before_discount == o.cost_before_discount &&
          discount == o.discount &&
          extras == o.extras &&
          extras_cost == o.extras_cost &&
          incurred_cost == o.incurred_cost &&
          overage == o.overage &&
          plan_code == o.plan_code &&
          plan_minimum == o.plan_minimum &&
          plan_name == o.plan_name &&
          requests == o.requests &&
          requests_cost == o.requests_cost &&
          terms == o.terms
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [bandwidth, bandwidth_cost, bandwidth_units, cost, cost_before_discount, discount, extras, extras_cost, incurred_cost, overage, plan_code, plan_minimum, plan_name, requests, requests_cost, terms].hash
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
