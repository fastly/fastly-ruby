=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'date'
require 'time'

module Fastly
  class Healthcheck
    # How often to run the health check in milliseconds. Minimum 1 second, maximum 1 hour.
    attr_accessor :check_interval

    # A freeform descriptive note.
    attr_accessor :comment

    # The status code expected from the host.
    attr_accessor :expected_response

    # Array of custom headers that will be added to the health check probes.
    attr_accessor :headers

    # Which host to check.
    attr_accessor :host

    # Whether to use version 1.0 or 1.1 HTTP.
    attr_accessor :http_version

    # When loading a config, the initial number of probes to be seen as OK.
    attr_accessor :initial

    # Which HTTP method to use.
    attr_accessor :method

    # The name of the health check.
    attr_accessor :name

    # The path to check.
    attr_accessor :path

    # How many health checks must succeed to be considered healthy.
    attr_accessor :threshold

    # Timeout in milliseconds.
    attr_accessor :timeout

    # The number of most recent health check queries to keep for this health check.
    attr_accessor :window

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'check_interval' => :'check_interval',
        :'comment' => :'comment',
        :'expected_response' => :'expected_response',
        :'headers' => :'headers',
        :'host' => :'host',
        :'http_version' => :'http_version',
        :'initial' => :'initial',
        :'method' => :'method',
        :'name' => :'name',
        :'path' => :'path',
        :'threshold' => :'threshold',
        :'timeout' => :'timeout',
        :'window' => :'window'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.fastly_types
      {
        :'check_interval' => :'Integer',
        :'comment' => :'String',
        :'expected_response' => :'Integer',
        :'headers' => :'Array<String>',
        :'host' => :'String',
        :'http_version' => :'String',
        :'initial' => :'Integer',
        :'method' => :'String',
        :'name' => :'String',
        :'path' => :'String',
        :'threshold' => :'Integer',
        :'timeout' => :'Integer',
        :'window' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.fastly_nullable
      Set.new([
        :'comment',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Fastly::Healthcheck` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Fastly::Healthcheck`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'check_interval')
        self.check_interval = attributes[:'check_interval']
      end

      if attributes.key?(:'comment')
        self.comment = attributes[:'comment']
      end

      if attributes.key?(:'expected_response')
        self.expected_response = attributes[:'expected_response']
      end

      if attributes.key?(:'headers')
        if (value = attributes[:'headers']).is_a?(Array)
          self.headers = value
        end
      end

      if attributes.key?(:'host')
        self.host = attributes[:'host']
      end

      if attributes.key?(:'http_version')
        self.http_version = attributes[:'http_version']
      end

      if attributes.key?(:'initial')
        self.initial = attributes[:'initial']
      end

      if attributes.key?(:'method')
        self.method = attributes[:'method']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'path')
        self.path = attributes[:'path']
      end

      if attributes.key?(:'threshold')
        self.threshold = attributes[:'threshold']
      end

      if attributes.key?(:'timeout')
        self.timeout = attributes[:'timeout']
      end

      if attributes.key?(:'window')
        self.window = attributes[:'window']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@check_interval.nil? && @check_interval > 3600000
        invalid_properties.push('invalid value for "check_interval", must be smaller than or equal to 3600000.')
      end

      if !@check_interval.nil? && @check_interval < 1000
        invalid_properties.push('invalid value for "check_interval", must be greater than or equal to 1000.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@check_interval.nil? && @check_interval > 3600000
      return false if !@check_interval.nil? && @check_interval < 1000
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] check_interval Value to be assigned
    def check_interval=(check_interval)
      if !check_interval.nil? && check_interval > 3600000
        fail ArgumentError, 'invalid value for "check_interval", must be smaller than or equal to 3600000.'
      end

      if !check_interval.nil? && check_interval < 1000
        fail ArgumentError, 'invalid value for "check_interval", must be greater than or equal to 1000.'
      end

      @check_interval = check_interval
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          check_interval == o.check_interval &&
          comment == o.comment &&
          expected_response == o.expected_response &&
          headers == o.headers &&
          host == o.host &&
          http_version == o.http_version &&
          initial == o.initial &&
          method == o.method &&
          name == o.name &&
          path == o.path &&
          threshold == o.threshold &&
          timeout == o.timeout &&
          window == o.window
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [check_interval, comment, expected_response, headers, host, http_version, initial, method, name, path, threshold, timeout, window].hash
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
