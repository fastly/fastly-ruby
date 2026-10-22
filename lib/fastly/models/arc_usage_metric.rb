=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'date'
require 'time'

module Fastly
  # A usage metric measured for a single date (or hour, when `granularity` is `hourly`).
  class ArcUsageMetric
    # The date (or hour) the usage was measured. Formatted as `YYYY-MM-DD` when `granularity` is `daily`, or `YYYY-MM-DD HH:00:00` when `granularity` is `hourly`. 
    attr_accessor :date

    # The type of usage being measured.
    attr_accessor :usage_type

    # The quantity of the usage type for this date.
    attr_accessor :quantity

    # The ID of the virtual key this usage is attributed to.
    attr_accessor :virtual_key_id

    # The display name of the virtual key this usage is attributed to.
    attr_accessor :virtual_key_name

    # The ID of the provider connection originally requested, before any failover occurred.
    attr_accessor :primary_provider

    # The name of the provider connection that ultimately served the request.
    attr_accessor :provider

    # The ID of the provider connection that ultimately served the request.
    attr_accessor :provider_connection_id

    # The AI model identifier used.
    attr_accessor :model

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
        :'date' => :'date',
        :'usage_type' => :'usage_type',
        :'quantity' => :'quantity',
        :'virtual_key_id' => :'virtual_key_id',
        :'virtual_key_name' => :'virtual_key_name',
        :'primary_provider' => :'primary_provider',
        :'provider' => :'provider',
        :'provider_connection_id' => :'provider_connection_id',
        :'model' => :'model'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.fastly_types
      {
        :'date' => :'String',
        :'usage_type' => :'String',
        :'quantity' => :'Integer',
        :'virtual_key_id' => :'String',
        :'virtual_key_name' => :'String',
        :'primary_provider' => :'String',
        :'provider' => :'String',
        :'provider_connection_id' => :'String',
        :'model' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.fastly_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Fastly::ArcUsageMetric` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Fastly::ArcUsageMetric`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.key?(:'usage_type')
        self.usage_type = attributes[:'usage_type']
      end

      if attributes.key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.key?(:'virtual_key_id')
        self.virtual_key_id = attributes[:'virtual_key_id']
      end

      if attributes.key?(:'virtual_key_name')
        self.virtual_key_name = attributes[:'virtual_key_name']
      end

      if attributes.key?(:'primary_provider')
        self.primary_provider = attributes[:'primary_provider']
      end

      if attributes.key?(:'provider')
        self.provider = attributes[:'provider']
      end

      if attributes.key?(:'provider_connection_id')
        self.provider_connection_id = attributes[:'provider_connection_id']
      end

      if attributes.key?(:'model')
        self.model = attributes[:'model']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @date.nil?
        invalid_properties.push('invalid value for "date", date cannot be nil.')
      end

      if @usage_type.nil?
        invalid_properties.push('invalid value for "usage_type", usage_type cannot be nil.')
      end

      if @quantity.nil?
        invalid_properties.push('invalid value for "quantity", quantity cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @date.nil?
      return false if @usage_type.nil?
      usage_type_validator = EnumAttributeValidator.new('String', ["requests", "sessions", "input_tokens", "output_tokens"])
      return false unless usage_type_validator.valid?(@usage_type)
      return false if @quantity.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] usage_type Object to be assigned
    def usage_type=(usage_type)
      validator = EnumAttributeValidator.new('String', ["requests", "sessions", "input_tokens", "output_tokens"])
      unless validator.valid?(usage_type)
        fail ArgumentError, "invalid value for \"usage_type\", must be one of #{validator.allowable_values}."
      end
      @usage_type = usage_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          date == o.date &&
          usage_type == o.usage_type &&
          quantity == o.quantity &&
          virtual_key_id == o.virtual_key_id &&
          virtual_key_name == o.virtual_key_name &&
          primary_provider == o.primary_provider &&
          provider == o.provider &&
          provider_connection_id == o.provider_connection_id &&
          model == o.model
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [date, usage_type, quantity, virtual_key_id, virtual_key_name, primary_provider, provider, provider_connection_id, model].hash
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
