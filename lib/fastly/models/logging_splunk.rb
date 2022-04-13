=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'date'
require 'time'

module Fastly
  class LoggingSplunk
    # The name for the real-time logging configuration.
    attr_accessor :name

    # Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
    attr_accessor :placement

    # The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  
    attr_accessor :format_version

    # The name of an existing condition in the configured endpoint, or leave blank to always execute.
    attr_accessor :response_condition

    # A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats).
    attr_accessor :format

    # A secure certificate to authenticate a server with. Must be in PEM format.
    attr_accessor :tls_ca_cert

    # The client certificate used to make authenticated requests. Must be in PEM format.
    attr_accessor :tls_client_cert

    # The client private key used to make authenticated requests. Must be in PEM format.
    attr_accessor :tls_client_key

    # The hostname to verify the server's certificate. This should be one of the Subject Alternative Name (SAN) fields for the certificate. Common Names (CN) are not supported.
    attr_accessor :tls_hostname

    # The maximum number of logs sent in one request. Defaults `0` for unbounded.
    attr_accessor :request_max_entries

    # The maximum number of bytes sent in one request. Defaults `0` for unbounded.
    attr_accessor :request_max_bytes

    # The URL to post logs to.
    attr_accessor :url

    # A Splunk token for use in posting logs over HTTP to your collector.
    attr_accessor :token

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
        :'name' => :'name',
        :'placement' => :'placement',
        :'format_version' => :'format_version',
        :'response_condition' => :'response_condition',
        :'format' => :'format',
        :'tls_ca_cert' => :'tls_ca_cert',
        :'tls_client_cert' => :'tls_client_cert',
        :'tls_client_key' => :'tls_client_key',
        :'tls_hostname' => :'tls_hostname',
        :'request_max_entries' => :'request_max_entries',
        :'request_max_bytes' => :'request_max_bytes',
        :'url' => :'url',
        :'token' => :'token',
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
        :'name' => :'String',
        :'placement' => :'String',
        :'format_version' => :'Integer',
        :'response_condition' => :'String',
        :'format' => :'String',
        :'tls_ca_cert' => :'String',
        :'tls_client_cert' => :'String',
        :'tls_client_key' => :'String',
        :'tls_hostname' => :'String',
        :'request_max_entries' => :'Integer',
        :'request_max_bytes' => :'Integer',
        :'url' => :'String',
        :'token' => :'String',
        :'use_tls' => :'LoggingUseTls'
      }
    end

    # List of attributes with nullable: true
    def self.fastly_nullable
      Set.new([
        :'placement',
        :'response_condition',
        :'tls_ca_cert',
        :'tls_client_cert',
        :'tls_client_key',
        :'tls_hostname',
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.fastly_all_of
      [
      :'LoggingCommon',
      :'LoggingRequestCapsCommon',
      :'LoggingSplunkAllOf',
      :'LoggingTlsCommon'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Fastly::LoggingSplunk` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Fastly::LoggingSplunk`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'placement')
        self.placement = attributes[:'placement']
      end

      if attributes.key?(:'format_version')
        self.format_version = attributes[:'format_version']
      else
        self.format_version = FORMAT_VERSION::v2
      end

      if attributes.key?(:'response_condition')
        self.response_condition = attributes[:'response_condition']
      end

      if attributes.key?(:'format')
        self.format = attributes[:'format']
      else
        self.format = '%h %l %u %t \"%r\" %&gt;s %b'
      end

      if attributes.key?(:'tls_ca_cert')
        self.tls_ca_cert = attributes[:'tls_ca_cert']
      else
        self.tls_ca_cert = 'null'
      end

      if attributes.key?(:'tls_client_cert')
        self.tls_client_cert = attributes[:'tls_client_cert']
      else
        self.tls_client_cert = 'null'
      end

      if attributes.key?(:'tls_client_key')
        self.tls_client_key = attributes[:'tls_client_key']
      else
        self.tls_client_key = 'null'
      end

      if attributes.key?(:'tls_hostname')
        self.tls_hostname = attributes[:'tls_hostname']
      else
        self.tls_hostname = 'null'
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

      if attributes.key?(:'url')
        self.url = attributes[:'url']
      end

      if attributes.key?(:'token')
        self.token = attributes[:'token']
      end

      if attributes.key?(:'use_tls')
        self.use_tls = attributes[:'use_tls']
      else
        self.use_tls = LoggingUseTls::no_tls
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
      placement_validator = EnumAttributeValidator.new('String', ["none", "waf_debug", "null"])
      return false unless placement_validator.valid?(@placement)
      format_version_validator = EnumAttributeValidator.new('Integer', [1, 2])
      return false unless format_version_validator.valid?(@format_version)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] placement Object to be assigned
    def placement=(placement)
      validator = EnumAttributeValidator.new('String', ["none", "waf_debug", "null"])
      unless validator.valid?(placement)
        fail ArgumentError, "invalid value for \"placement\", must be one of #{validator.allowable_values}."
      end
      @placement = placement
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] format_version Object to be assigned
    def format_version=(format_version)
      validator = EnumAttributeValidator.new('Integer', [1, 2])
      unless validator.valid?(format_version)
        fail ArgumentError, "invalid value for \"format_version\", must be one of #{validator.allowable_values}."
      end
      @format_version = format_version
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          placement == o.placement &&
          format_version == o.format_version &&
          response_condition == o.response_condition &&
          format == o.format &&
          tls_ca_cert == o.tls_ca_cert &&
          tls_client_cert == o.tls_client_cert &&
          tls_client_key == o.tls_client_key &&
          tls_hostname == o.tls_hostname &&
          request_max_entries == o.request_max_entries &&
          request_max_bytes == o.request_max_bytes &&
          url == o.url &&
          token == o.token &&
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
      [name, placement, format_version, response_condition, format, tls_ca_cert, tls_client_cert, tls_client_key, tls_hostname, request_max_entries, request_max_bytes, url, token, use_tls].hash
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
