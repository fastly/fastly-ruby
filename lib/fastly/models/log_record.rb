=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'date'
require 'time'

module Fastly
  class LogRecord
    # The ID of the Fastly customer that owns the service.
    attr_accessor :customer_id

    attr_accessor :service_id

    # Timestamp of the request in ISO 8601 format.
    attr_accessor :timestamp

    # The autonomous system (AS) number of the client.
    attr_accessor :client_as_number

    # The client's country subdivision code as found in ISO 3166-2.
    attr_accessor :client_region

    # The two-letter ISO 3166-1 country code for the client.
    attr_accessor :client_country_code

    # The name of the operating system installed on the client device.
    attr_accessor :client_os_name

    # The type of the client's device.
    attr_accessor :client_device_type

    # The name of the browser in use on the client device.
    attr_accessor :client_browser_name

    # The version of the browser in use on client device.
    attr_accessor :client_browser_version

    # The name of the Fastly POP that served this request.
    attr_accessor :fastly_pop

    # The name of the origin host that served this request.
    attr_accessor :origin_host

    # HTTP protocol version in use for this request. For example, HTTP/1.1.
    attr_accessor :request_protocol

    # The name of the request host used for this request.
    attr_accessor :request_host

    # The URL path supplied for this request.
    attr_accessor :request_path

    # HTTP method sent by the client such as \"GET\" or \"POST\".
    attr_accessor :request_method

    # Body bytes sent to the client in the response.
    attr_accessor :response_bytes_body

    # Header bytes sent to the client in the response.
    attr_accessor :response_bytes_header

    # Total bytes sent to the client in the response.
    attr_accessor :response_content_length

    # The content type of the response sent to the client.
    attr_accessor :response_content_type

    # The HTTP reason phrase returned for this request, if any.
    attr_accessor :response_reason

    # The state of the request with optional suffixes describing special cases.
    attr_accessor :response_state

    # The HTTP response code returned for this request.
    attr_accessor :response_status

    # The time since the request started in seconds.
    attr_accessor :response_time

    # Indicates whether the request was a HIT or a MISS.
    attr_accessor :response_x_cache

    # Indicates whether this request was fulfilled from cache.
    attr_accessor :is_cache_hit

    # Indicates whether the request was handled by a Fastly edge POP.
    attr_accessor :is_edge

    # Indicates whether the request was handled by a Fastly shield POP.
    attr_accessor :is_shield

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'customer_id' => :'customer_id',
        :'service_id' => :'service_id',
        :'timestamp' => :'timestamp',
        :'client_as_number' => :'client_as_number',
        :'client_region' => :'client_region',
        :'client_country_code' => :'client_country_code',
        :'client_os_name' => :'client_os_name',
        :'client_device_type' => :'client_device_type',
        :'client_browser_name' => :'client_browser_name',
        :'client_browser_version' => :'client_browser_version',
        :'fastly_pop' => :'fastly_pop',
        :'origin_host' => :'origin_host',
        :'request_protocol' => :'request_protocol',
        :'request_host' => :'request_host',
        :'request_path' => :'request_path',
        :'request_method' => :'request_method',
        :'response_bytes_body' => :'response_bytes_body',
        :'response_bytes_header' => :'response_bytes_header',
        :'response_content_length' => :'response_content_length',
        :'response_content_type' => :'response_content_type',
        :'response_reason' => :'response_reason',
        :'response_state' => :'response_state',
        :'response_status' => :'response_status',
        :'response_time' => :'response_time',
        :'response_x_cache' => :'response_x_cache',
        :'is_cache_hit' => :'is_cache_hit',
        :'is_edge' => :'is_edge',
        :'is_shield' => :'is_shield'
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
        :'service_id' => :'LogPropertyServiceId',
        :'timestamp' => :'Time',
        :'client_as_number' => :'Integer',
        :'client_region' => :'String',
        :'client_country_code' => :'String',
        :'client_os_name' => :'String',
        :'client_device_type' => :'String',
        :'client_browser_name' => :'String',
        :'client_browser_version' => :'String',
        :'fastly_pop' => :'String',
        :'origin_host' => :'String',
        :'request_protocol' => :'String',
        :'request_host' => :'String',
        :'request_path' => :'String',
        :'request_method' => :'String',
        :'response_bytes_body' => :'Integer',
        :'response_bytes_header' => :'Integer',
        :'response_content_length' => :'Integer',
        :'response_content_type' => :'String',
        :'response_reason' => :'String',
        :'response_state' => :'String',
        :'response_status' => :'Integer',
        :'response_time' => :'Float',
        :'response_x_cache' => :'String',
        :'is_cache_hit' => :'Boolean',
        :'is_edge' => :'Boolean',
        :'is_shield' => :'Boolean'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Fastly::LogRecord` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Fastly::LogRecord`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'customer_id')
        self.customer_id = attributes[:'customer_id']
      end

      if attributes.key?(:'service_id')
        self.service_id = attributes[:'service_id']
      end

      if attributes.key?(:'timestamp')
        self.timestamp = attributes[:'timestamp']
      end

      if attributes.key?(:'client_as_number')
        self.client_as_number = attributes[:'client_as_number']
      end

      if attributes.key?(:'client_region')
        self.client_region = attributes[:'client_region']
      end

      if attributes.key?(:'client_country_code')
        self.client_country_code = attributes[:'client_country_code']
      end

      if attributes.key?(:'client_os_name')
        self.client_os_name = attributes[:'client_os_name']
      end

      if attributes.key?(:'client_device_type')
        self.client_device_type = attributes[:'client_device_type']
      end

      if attributes.key?(:'client_browser_name')
        self.client_browser_name = attributes[:'client_browser_name']
      end

      if attributes.key?(:'client_browser_version')
        self.client_browser_version = attributes[:'client_browser_version']
      end

      if attributes.key?(:'fastly_pop')
        self.fastly_pop = attributes[:'fastly_pop']
      end

      if attributes.key?(:'origin_host')
        self.origin_host = attributes[:'origin_host']
      end

      if attributes.key?(:'request_protocol')
        self.request_protocol = attributes[:'request_protocol']
      end

      if attributes.key?(:'request_host')
        self.request_host = attributes[:'request_host']
      end

      if attributes.key?(:'request_path')
        self.request_path = attributes[:'request_path']
      end

      if attributes.key?(:'request_method')
        self.request_method = attributes[:'request_method']
      end

      if attributes.key?(:'response_bytes_body')
        self.response_bytes_body = attributes[:'response_bytes_body']
      end

      if attributes.key?(:'response_bytes_header')
        self.response_bytes_header = attributes[:'response_bytes_header']
      end

      if attributes.key?(:'response_content_length')
        self.response_content_length = attributes[:'response_content_length']
      end

      if attributes.key?(:'response_content_type')
        self.response_content_type = attributes[:'response_content_type']
      end

      if attributes.key?(:'response_reason')
        self.response_reason = attributes[:'response_reason']
      end

      if attributes.key?(:'response_state')
        self.response_state = attributes[:'response_state']
      end

      if attributes.key?(:'response_status')
        self.response_status = attributes[:'response_status']
      end

      if attributes.key?(:'response_time')
        self.response_time = attributes[:'response_time']
      end

      if attributes.key?(:'response_x_cache')
        self.response_x_cache = attributes[:'response_x_cache']
      end

      if attributes.key?(:'is_cache_hit')
        self.is_cache_hit = attributes[:'is_cache_hit']
      end

      if attributes.key?(:'is_edge')
        self.is_edge = attributes[:'is_edge']
      end

      if attributes.key?(:'is_shield')
        self.is_shield = attributes[:'is_shield']
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
          service_id == o.service_id &&
          timestamp == o.timestamp &&
          client_as_number == o.client_as_number &&
          client_region == o.client_region &&
          client_country_code == o.client_country_code &&
          client_os_name == o.client_os_name &&
          client_device_type == o.client_device_type &&
          client_browser_name == o.client_browser_name &&
          client_browser_version == o.client_browser_version &&
          fastly_pop == o.fastly_pop &&
          origin_host == o.origin_host &&
          request_protocol == o.request_protocol &&
          request_host == o.request_host &&
          request_path == o.request_path &&
          request_method == o.request_method &&
          response_bytes_body == o.response_bytes_body &&
          response_bytes_header == o.response_bytes_header &&
          response_content_length == o.response_content_length &&
          response_content_type == o.response_content_type &&
          response_reason == o.response_reason &&
          response_state == o.response_state &&
          response_status == o.response_status &&
          response_time == o.response_time &&
          response_x_cache == o.response_x_cache &&
          is_cache_hit == o.is_cache_hit &&
          is_edge == o.is_edge &&
          is_shield == o.is_shield
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [customer_id, service_id, timestamp, client_as_number, client_region, client_country_code, client_os_name, client_device_type, client_browser_name, client_browser_version, fastly_pop, origin_host, request_protocol, request_host, request_path, request_method, response_bytes_body, response_bytes_header, response_content_length, response_content_type, response_reason, response_state, response_status, response_time, response_x_cache, is_cache_hit, is_edge, is_shield].hash
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
