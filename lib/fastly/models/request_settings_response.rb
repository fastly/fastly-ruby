=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'date'
require 'time'

module Fastly
  class RequestSettingsResponse
    # Date and time in ISO 8601 format.
    attr_accessor :created_at

    # Date and time in ISO 8601 format.
    attr_accessor :deleted_at

    # Date and time in ISO 8601 format.
    attr_accessor :updated_at

    attr_accessor :service_id

    attr_accessor :version

    # Allows you to terminate request handling and immediately perform an action.
    attr_accessor :action

    # Sets the host header.
    attr_accessor :default_host

    # Comma separated list of varnish request object fields that should be in the hash key.
    attr_accessor :hash_keys

    # Name for the request settings.
    attr_accessor :name

    # Condition which, if met, will select this configuration during a request. Optional.
    attr_accessor :request_condition

    # Short for X-Forwarded-For.
    attr_accessor :xff

    # Disable collapsed forwarding, so you don't wait for other objects to origin.
    attr_accessor :bypass_busy_wait

    # Allows you to force a cache miss for the request. Replaces the item in the cache if the content is cacheable.
    attr_accessor :force_miss

    # Forces the request use SSL (redirects a non-SSL to SSL).
    attr_accessor :force_ssl

    # Injects Fastly-Geo-Country, Fastly-Geo-City, and Fastly-Geo-Region into the request headers.
    attr_accessor :geo_headers

    # How old an object is allowed to be to serve stale-if-error or stale-while-revalidate.
    attr_accessor :max_stale_age

    # Injects the X-Timer info into the request for viewing origin fetch durations.
    attr_accessor :timer_support

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
        :'created_at' => :'created_at',
        :'deleted_at' => :'deleted_at',
        :'updated_at' => :'updated_at',
        :'service_id' => :'service_id',
        :'version' => :'version',
        :'action' => :'action',
        :'default_host' => :'default_host',
        :'hash_keys' => :'hash_keys',
        :'name' => :'name',
        :'request_condition' => :'request_condition',
        :'xff' => :'xff',
        :'bypass_busy_wait' => :'bypass_busy_wait',
        :'force_miss' => :'force_miss',
        :'force_ssl' => :'force_ssl',
        :'geo_headers' => :'geo_headers',
        :'max_stale_age' => :'max_stale_age',
        :'timer_support' => :'timer_support'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.fastly_types
      {
        :'created_at' => :'Time',
        :'deleted_at' => :'Time',
        :'updated_at' => :'Time',
        :'service_id' => :'String',
        :'version' => :'String',
        :'action' => :'String',
        :'default_host' => :'String',
        :'hash_keys' => :'String',
        :'name' => :'String',
        :'request_condition' => :'String',
        :'xff' => :'String',
        :'bypass_busy_wait' => :'String',
        :'force_miss' => :'String',
        :'force_ssl' => :'String',
        :'geo_headers' => :'String',
        :'max_stale_age' => :'String',
        :'timer_support' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.fastly_nullable
      Set.new([
        :'created_at',
        :'deleted_at',
        :'updated_at',
        :'action',
        :'default_host',
        :'hash_keys',
        :'request_condition',
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.fastly_all_of
      [
      :'RequestSettingsAdditional',
      :'RequestSettingsResponseAllOf',
      :'ServiceIdAndVersionString',
      :'Timestamps'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Fastly::RequestSettingsResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Fastly::RequestSettingsResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'deleted_at')
        self.deleted_at = attributes[:'deleted_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'service_id')
        self.service_id = attributes[:'service_id']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.key?(:'action')
        self.action = attributes[:'action']
      end

      if attributes.key?(:'default_host')
        self.default_host = attributes[:'default_host']
      end

      if attributes.key?(:'hash_keys')
        self.hash_keys = attributes[:'hash_keys']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'request_condition')
        self.request_condition = attributes[:'request_condition']
      end

      if attributes.key?(:'xff')
        self.xff = attributes[:'xff']
      end

      if attributes.key?(:'bypass_busy_wait')
        self.bypass_busy_wait = attributes[:'bypass_busy_wait']
      end

      if attributes.key?(:'force_miss')
        self.force_miss = attributes[:'force_miss']
      end

      if attributes.key?(:'force_ssl')
        self.force_ssl = attributes[:'force_ssl']
      end

      if attributes.key?(:'geo_headers')
        self.geo_headers = attributes[:'geo_headers']
      end

      if attributes.key?(:'max_stale_age')
        self.max_stale_age = attributes[:'max_stale_age']
      end

      if attributes.key?(:'timer_support')
        self.timer_support = attributes[:'timer_support']
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
      action_validator = EnumAttributeValidator.new('String', ["lookup", "pass"])
      return false unless action_validator.valid?(@action)
      xff_validator = EnumAttributeValidator.new('String', ["clear", "leave", "append", "append_all", "overwrite"])
      return false unless xff_validator.valid?(@xff)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] action Object to be assigned
    def action=(action)
      validator = EnumAttributeValidator.new('String', ["lookup", "pass"])
      unless validator.valid?(action)
        fail ArgumentError, "invalid value for \"action\", must be one of #{validator.allowable_values}."
      end
      @action = action
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] xff Object to be assigned
    def xff=(xff)
      validator = EnumAttributeValidator.new('String', ["clear", "leave", "append", "append_all", "overwrite"])
      unless validator.valid?(xff)
        fail ArgumentError, "invalid value for \"xff\", must be one of #{validator.allowable_values}."
      end
      @xff = xff
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          created_at == o.created_at &&
          deleted_at == o.deleted_at &&
          updated_at == o.updated_at &&
          service_id == o.service_id &&
          version == o.version &&
          action == o.action &&
          default_host == o.default_host &&
          hash_keys == o.hash_keys &&
          name == o.name &&
          request_condition == o.request_condition &&
          xff == o.xff &&
          bypass_busy_wait == o.bypass_busy_wait &&
          force_miss == o.force_miss &&
          force_ssl == o.force_ssl &&
          geo_headers == o.geo_headers &&
          max_stale_age == o.max_stale_age &&
          timer_support == o.timer_support
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [created_at, deleted_at, updated_at, service_id, version, action, default_host, hash_keys, name, request_condition, xff, bypass_busy_wait, force_miss, force_ssl, geo_headers, max_stale_age, timer_support].hash
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
