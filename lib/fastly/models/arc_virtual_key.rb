=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'date'
require 'time'

module Fastly
  # A virtual key used to authenticate requests through the AI Runtime Control gateway.
  class ArcVirtualKey
    # A display name for the virtual key.
    attr_accessor :name

    # The date and time the key expires, in RFC 3339 format. Omit for a key that doesn't expire.
    attr_accessor :expires_at

    # Whether AI Firewall security is enabled for requests made with this key.
    attr_accessor :security_enabled

    # The action AI Firewall takes when it detects a violation on a request made with this key. Only meaningful when `security_enabled` is `true`.
    attr_accessor :security_action

    # The requests-per-minute limit for this key. Omit for no limit.
    attr_accessor :rpm_limit

    # The tokens-per-minute limit for this key. Omit for no limit.
    attr_accessor :tpm_limit

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
        :'name' => :'name',
        :'expires_at' => :'expires_at',
        :'security_enabled' => :'security_enabled',
        :'security_action' => :'security_action',
        :'rpm_limit' => :'rpm_limit',
        :'tpm_limit' => :'tpm_limit'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.fastly_types
      {
        :'name' => :'String',
        :'expires_at' => :'Time',
        :'security_enabled' => :'Boolean',
        :'security_action' => :'String',
        :'rpm_limit' => :'Integer',
        :'tpm_limit' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.fastly_nullable
      Set.new([
        :'expires_at',
        :'rpm_limit',
        :'tpm_limit'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Fastly::ArcVirtualKey` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Fastly::ArcVirtualKey`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'expires_at')
        self.expires_at = attributes[:'expires_at']
      end

      if attributes.key?(:'security_enabled')
        self.security_enabled = attributes[:'security_enabled']
      else
        self.security_enabled = false
      end

      if attributes.key?(:'security_action')
        self.security_action = attributes[:'security_action']
      end

      if attributes.key?(:'rpm_limit')
        self.rpm_limit = attributes[:'rpm_limit']
      end

      if attributes.key?(:'tpm_limit')
        self.tpm_limit = attributes[:'tpm_limit']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if !@rpm_limit.nil? && @rpm_limit < 1
        invalid_properties.push('invalid value for "rpm_limit", must be greater than or equal to 1.')
      end

      if !@tpm_limit.nil? && @tpm_limit < 1
        invalid_properties.push('invalid value for "tpm_limit", must be greater than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      security_action_validator = EnumAttributeValidator.new('String', ["log", "block", "replace"])
      return false unless security_action_validator.valid?(@security_action)
      return false if !@rpm_limit.nil? && @rpm_limit < 1
      return false if !@tpm_limit.nil? && @tpm_limit < 1
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] security_action Object to be assigned
    def security_action=(security_action)
      validator = EnumAttributeValidator.new('String', ["log", "block", "replace"])
      unless validator.valid?(security_action)
        fail ArgumentError, "invalid value for \"security_action\", must be one of #{validator.allowable_values}."
      end
      @security_action = security_action
    end

    # Custom attribute writer method with validation
    # @param [Object] rpm_limit Value to be assigned
    def rpm_limit=(rpm_limit)
      if !rpm_limit.nil? && rpm_limit < 1
        fail ArgumentError, 'invalid value for "rpm_limit", must be greater than or equal to 1.'
      end

      @rpm_limit = rpm_limit
    end

    # Custom attribute writer method with validation
    # @param [Object] tpm_limit Value to be assigned
    def tpm_limit=(tpm_limit)
      if !tpm_limit.nil? && tpm_limit < 1
        fail ArgumentError, 'invalid value for "tpm_limit", must be greater than or equal to 1.'
      end

      @tpm_limit = tpm_limit
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          expires_at == o.expires_at &&
          security_enabled == o.security_enabled &&
          security_action == o.security_action &&
          rpm_limit == o.rpm_limit &&
          tpm_limit == o.tpm_limit
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, expires_at, security_enabled, security_action, rpm_limit, tpm_limit].hash
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
