=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0


=end

require 'date'
require 'time'

module Fastly
  class LoggingHttpsAllOf
    # The URL to send logs to. Must use HTTPS. Required.
    attr_accessor :url

    # The maximum number of logs sent in one request. Defaults `0` (no limit).
    attr_accessor :request_max_entries

    # The maximum number of bytes sent in one request. Defaults `0` (no limit).
    attr_accessor :request_max_bytes

    # Content type of the header sent with the request.
    attr_accessor :content_type

    # Name of the custom header sent with the request.
    attr_accessor :header_name

    attr_accessor :message_type

    # Value of the custom header sent with the request.
    attr_accessor :header_value

    # HTTP method used for request.
    attr_accessor :method

    # Enforces valid JSON formatting for log entries.
    attr_accessor :json_format

    # A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats).
    attr_accessor :format

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
        :'url' => :'url',
        :'request_max_entries' => :'request_max_entries',
        :'request_max_bytes' => :'request_max_bytes',
        :'content_type' => :'content_type',
        :'header_name' => :'header_name',
        :'message_type' => :'message_type',
        :'header_value' => :'header_value',
        :'method' => :'method',
        :'json_format' => :'json_format',
        :'format' => :'format'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.fastly_types
      {
        :'url' => :'String',
        :'request_max_entries' => :'Integer',
        :'request_max_bytes' => :'Integer',
        :'content_type' => :'String',
        :'header_name' => :'String',
        :'message_type' => :'LoggingMessageType',
        :'header_value' => :'String',
        :'method' => :'String',
        :'json_format' => :'String',
        :'format' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.fastly_nullable
      Set.new([
        :'content_type',
        :'header_name',
        :'header_value',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Fastly::LoggingHttpsAllOf` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Fastly::LoggingHttpsAllOf`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'url')
        self.url = attributes[:'url']
      end

      if attributes.key?(:'request_max_entries')
        self.request_max_entries = attributes[:'request_max_entries']
      else
        self.request_max_entries = 0
      end

      if attributes.key?(:'request_max_bytes')
        self.request_max_bytes = attributes[:'request_max_bytes']
      else
        self.request_max_bytes = 0
      end

      if attributes.key?(:'content_type')
        self.content_type = attributes[:'content_type']
      else
        self.content_type = 'null'
      end

      if attributes.key?(:'header_name')
        self.header_name = attributes[:'header_name']
      else
        self.header_name = 'null'
      end

      if attributes.key?(:'message_type')
        self.message_type = attributes[:'message_type']
      else
        self.message_type = 'classic'
      end

      if attributes.key?(:'header_value')
        self.header_value = attributes[:'header_value']
      else
        self.header_value = 'null'
      end

      if attributes.key?(:'method')
        self.method = attributes[:'method']
      else
        self.method = 'POST'
      end

      if attributes.key?(:'json_format')
        self.json_format = attributes[:'json_format']
      end

      if attributes.key?(:'format')
        self.format = attributes[:'format']
      else
        self.format = '%h %l %u %t \"%r\" %&gt;s %b'
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
      method_validator = EnumAttributeValidator.new('String', ["POST", "PUT"])
      return false unless method_validator.valid?(@method)
      json_format_validator = EnumAttributeValidator.new('String', ["0", "1", "2"])
      return false unless json_format_validator.valid?(@json_format)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] method Object to be assigned
    def method=(method)
      validator = EnumAttributeValidator.new('String', ["POST", "PUT"])
      unless validator.valid?(method)
        fail ArgumentError, "invalid value for \"method\", must be one of #{validator.allowable_values}."
      end
      @method = method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] json_format Object to be assigned
    def json_format=(json_format)
      validator = EnumAttributeValidator.new('String', ["0", "1", "2"])
      unless validator.valid?(json_format)
        fail ArgumentError, "invalid value for \"json_format\", must be one of #{validator.allowable_values}."
      end
      @json_format = json_format
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          url == o.url &&
          request_max_entries == o.request_max_entries &&
          request_max_bytes == o.request_max_bytes &&
          content_type == o.content_type &&
          header_name == o.header_name &&
          message_type == o.message_type &&
          header_value == o.header_value &&
          method == o.method &&
          json_format == o.json_format &&
          format == o.format
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [url, request_max_entries, request_max_bytes, content_type, header_name, message_type, header_value, method, json_format, format].hash
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
