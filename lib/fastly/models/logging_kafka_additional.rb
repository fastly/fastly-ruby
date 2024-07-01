=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'date'
require 'time'

module Fastly
  class LoggingKafkaAdditional
    # The Kafka topic to send logs to. Required.
    attr_accessor :topic

    # A comma-separated list of IP addresses or hostnames of Kafka brokers. Required.
    attr_accessor :brokers

    # The codec used for compression of your logs.
    attr_accessor :compression_codec

    # The number of acknowledgements a leader must receive before a write is considered successful.
    attr_accessor :required_acks

    # The maximum number of bytes sent in one request. Defaults `0` (no limit).
    attr_accessor :request_max_bytes

    # Enables parsing of key=value tuples from the beginning of a logline, turning them into [record headers](https://cwiki.apache.org/confluence/display/KAFKA/KIP-82+-+Add+Record+Headers).
    attr_accessor :parse_log_keyvals

    # SASL authentication method.
    attr_accessor :auth_method

    # SASL user.
    attr_accessor :user

    # SASL password.
    attr_accessor :password

    attr_accessor :use_tls

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
        :'topic' => :'topic',
        :'brokers' => :'brokers',
        :'compression_codec' => :'compression_codec',
        :'required_acks' => :'required_acks',
        :'request_max_bytes' => :'request_max_bytes',
        :'parse_log_keyvals' => :'parse_log_keyvals',
        :'auth_method' => :'auth_method',
        :'user' => :'user',
        :'password' => :'password',
        :'use_tls' => :'use_tls'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.fastly_types
      {
        :'topic' => :'String',
        :'brokers' => :'String',
        :'compression_codec' => :'String',
        :'required_acks' => :'Integer',
        :'request_max_bytes' => :'Integer',
        :'parse_log_keyvals' => :'Boolean',
        :'auth_method' => :'String',
        :'user' => :'String',
        :'password' => :'String',
        :'use_tls' => :'LoggingUseTlsString'
      }
    end

    # List of attributes with nullable: true
    def self.fastly_nullable
      Set.new([
        :'compression_codec',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Fastly::LoggingKafkaAdditional` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Fastly::LoggingKafkaAdditional`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'topic')
        self.topic = attributes[:'topic']
      end

      if attributes.key?(:'brokers')
        self.brokers = attributes[:'brokers']
      end

      if attributes.key?(:'compression_codec')
        self.compression_codec = attributes[:'compression_codec']
      end

      if attributes.key?(:'required_acks')
        self.required_acks = attributes[:'required_acks']
      else
        self.required_acks = REQUIRED_ACKS::one
      end

      if attributes.key?(:'request_max_bytes')
        self.request_max_bytes = attributes[:'request_max_bytes']
      else
        self.request_max_bytes = 0
      end

      if attributes.key?(:'parse_log_keyvals')
        self.parse_log_keyvals = attributes[:'parse_log_keyvals']
      end

      if attributes.key?(:'auth_method')
        self.auth_method = attributes[:'auth_method']
      end

      if attributes.key?(:'user')
        self.user = attributes[:'user']
      end

      if attributes.key?(:'password')
        self.password = attributes[:'password']
      end

      if attributes.key?(:'use_tls')
        self.use_tls = attributes[:'use_tls']
      else
        self.use_tls = '0'
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
      compression_codec_validator = EnumAttributeValidator.new('String', ["gzip", "snappy", "lz4", "null"])
      return false unless compression_codec_validator.valid?(@compression_codec)
      required_acks_validator = EnumAttributeValidator.new('Integer', [1, 0, -1])
      return false unless required_acks_validator.valid?(@required_acks)
      auth_method_validator = EnumAttributeValidator.new('String', ["plain", "scram-sha-256", "scram-sha-512"])
      return false unless auth_method_validator.valid?(@auth_method)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] compression_codec Object to be assigned
    def compression_codec=(compression_codec)
      validator = EnumAttributeValidator.new('String', ["gzip", "snappy", "lz4", "null"])
      unless validator.valid?(compression_codec)
        fail ArgumentError, "invalid value for \"compression_codec\", must be one of #{validator.allowable_values}."
      end
      @compression_codec = compression_codec
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] required_acks Object to be assigned
    def required_acks=(required_acks)
      validator = EnumAttributeValidator.new('Integer', [1, 0, -1])
      unless validator.valid?(required_acks)
        fail ArgumentError, "invalid value for \"required_acks\", must be one of #{validator.allowable_values}."
      end
      @required_acks = required_acks
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] auth_method Object to be assigned
    def auth_method=(auth_method)
      validator = EnumAttributeValidator.new('String', ["plain", "scram-sha-256", "scram-sha-512"])
      unless validator.valid?(auth_method)
        fail ArgumentError, "invalid value for \"auth_method\", must be one of #{validator.allowable_values}."
      end
      @auth_method = auth_method
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          topic == o.topic &&
          brokers == o.brokers &&
          compression_codec == o.compression_codec &&
          required_acks == o.required_acks &&
          request_max_bytes == o.request_max_bytes &&
          parse_log_keyvals == o.parse_log_keyvals &&
          auth_method == o.auth_method &&
          user == o.user &&
          password == o.password &&
          use_tls == o.use_tls
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [topic, brokers, compression_codec, required_acks, request_max_bytes, parse_log_keyvals, auth_method, user, password, use_tls].hash
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
