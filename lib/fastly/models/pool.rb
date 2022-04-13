=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'date'
require 'time'

module Fastly
  class Pool
    # A secure certificate to authenticate a server with. Must be in PEM format.
    attr_accessor :tls_ca_cert

    # The client certificate used to make authenticated requests. Must be in PEM format.
    attr_accessor :tls_client_cert

    # The client private key used to make authenticated requests. Must be in PEM format.
    attr_accessor :tls_client_key

    # The hostname used to verify a server's certificate. It can either be the Common Name (CN) or a Subject Alternative Name (SAN).
    attr_accessor :tls_cert_hostname

    # Whether to use TLS.
    attr_accessor :use_tls

    # Name for the Pool.
    attr_accessor :name

    # Selected POP to serve as a shield for the servers. Defaults to `null` meaning no origin shielding if not set. Refer to the [POPs API endpoint](/reference/api/utils/pops/) to get a list of available POPs used for shielding.
    attr_accessor :shield

    # Condition which, if met, will select this configuration during a request. Optional.
    attr_accessor :request_condition

    # Maximum number of connections. Optional.
    attr_accessor :max_conn_default

    # How long to wait for a timeout in milliseconds. Optional.
    attr_accessor :connect_timeout

    # How long to wait for the first byte in milliseconds. Optional.
    attr_accessor :first_byte_timeout

    # Percentage of capacity (`0-100`) that needs to be operationally available for a pool to be considered up.
    attr_accessor :quorum

    # List of OpenSSL ciphers (see the [openssl.org manpages](https://www.openssl.org/docs/man1.1.1/man1/ciphers.html) for details). Optional.
    attr_accessor :tls_ciphers

    # SNI hostname. Optional.
    attr_accessor :tls_sni_hostname

    # Be strict on checking TLS certs. Optional.
    attr_accessor :tls_check_cert

    # Minimum allowed TLS version on connections to this server. Optional.
    attr_accessor :min_tls_version

    # Maximum allowed TLS version on connections to this server. Optional.
    attr_accessor :max_tls_version

    # Name of the healthcheck to use with this pool. Can be empty and could be reused across multiple backend and pools.
    attr_accessor :healthcheck

    # A freeform descriptive note.
    attr_accessor :comment

    # What type of load balance group to use.
    attr_accessor :type

    # The hostname to [override the Host header](https://docs.fastly.com/en/guides/specifying-an-override-host). Defaults to `null` meaning no override of the Host header will occur. This setting can also be added to a Server definition. If the field is set on a Server definition it will override the Pool setting.
    attr_accessor :override_host

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
        :'tls_ca_cert' => :'tls_ca_cert',
        :'tls_client_cert' => :'tls_client_cert',
        :'tls_client_key' => :'tls_client_key',
        :'tls_cert_hostname' => :'tls_cert_hostname',
        :'use_tls' => :'use_tls',
        :'name' => :'name',
        :'shield' => :'shield',
        :'request_condition' => :'request_condition',
        :'max_conn_default' => :'max_conn_default',
        :'connect_timeout' => :'connect_timeout',
        :'first_byte_timeout' => :'first_byte_timeout',
        :'quorum' => :'quorum',
        :'tls_ciphers' => :'tls_ciphers',
        :'tls_sni_hostname' => :'tls_sni_hostname',
        :'tls_check_cert' => :'tls_check_cert',
        :'min_tls_version' => :'min_tls_version',
        :'max_tls_version' => :'max_tls_version',
        :'healthcheck' => :'healthcheck',
        :'comment' => :'comment',
        :'type' => :'type',
        :'override_host' => :'override_host'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.fastly_types
      {
        :'tls_ca_cert' => :'String',
        :'tls_client_cert' => :'String',
        :'tls_client_key' => :'String',
        :'tls_cert_hostname' => :'String',
        :'use_tls' => :'Integer',
        :'name' => :'String',
        :'shield' => :'String',
        :'request_condition' => :'String',
        :'max_conn_default' => :'Integer',
        :'connect_timeout' => :'Integer',
        :'first_byte_timeout' => :'Integer',
        :'quorum' => :'Integer',
        :'tls_ciphers' => :'String',
        :'tls_sni_hostname' => :'String',
        :'tls_check_cert' => :'Integer',
        :'min_tls_version' => :'Integer',
        :'max_tls_version' => :'Integer',
        :'healthcheck' => :'String',
        :'comment' => :'String',
        :'type' => :'String',
        :'override_host' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.fastly_nullable
      Set.new([
        :'tls_ca_cert',
        :'tls_client_cert',
        :'tls_client_key',
        :'tls_cert_hostname',
        :'shield',
        :'request_condition',
        :'tls_ciphers',
        :'tls_sni_hostname',
        :'tls_check_cert',
        :'min_tls_version',
        :'max_tls_version',
        :'healthcheck',
        :'comment',
        :'override_host'
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.fastly_all_of
      [
      :'PoolAllOf',
      :'TlsCommon'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Fastly::Pool` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Fastly::Pool`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

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

      if attributes.key?(:'tls_cert_hostname')
        self.tls_cert_hostname = attributes[:'tls_cert_hostname']
      else
        self.tls_cert_hostname = 'null'
      end

      if attributes.key?(:'use_tls')
        self.use_tls = attributes[:'use_tls']
      else
        self.use_tls = USE_TLS::no_tls
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'shield')
        self.shield = attributes[:'shield']
      else
        self.shield = 'null'
      end

      if attributes.key?(:'request_condition')
        self.request_condition = attributes[:'request_condition']
      end

      if attributes.key?(:'max_conn_default')
        self.max_conn_default = attributes[:'max_conn_default']
      else
        self.max_conn_default = 200
      end

      if attributes.key?(:'connect_timeout')
        self.connect_timeout = attributes[:'connect_timeout']
      end

      if attributes.key?(:'first_byte_timeout')
        self.first_byte_timeout = attributes[:'first_byte_timeout']
      end

      if attributes.key?(:'quorum')
        self.quorum = attributes[:'quorum']
      else
        self.quorum = 75
      end

      if attributes.key?(:'tls_ciphers')
        self.tls_ciphers = attributes[:'tls_ciphers']
      end

      if attributes.key?(:'tls_sni_hostname')
        self.tls_sni_hostname = attributes[:'tls_sni_hostname']
      end

      if attributes.key?(:'tls_check_cert')
        self.tls_check_cert = attributes[:'tls_check_cert']
      end

      if attributes.key?(:'min_tls_version')
        self.min_tls_version = attributes[:'min_tls_version']
      end

      if attributes.key?(:'max_tls_version')
        self.max_tls_version = attributes[:'max_tls_version']
      end

      if attributes.key?(:'healthcheck')
        self.healthcheck = attributes[:'healthcheck']
      end

      if attributes.key?(:'comment')
        self.comment = attributes[:'comment']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'override_host')
        self.override_host = attributes[:'override_host']
      else
        self.override_host = 'null'
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@quorum.nil? && @quorum > 100
        invalid_properties.push('invalid value for "quorum", must be smaller than or equal to 100.')
      end

      if !@quorum.nil? && @quorum < 0
        invalid_properties.push('invalid value for "quorum", must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      use_tls_validator = EnumAttributeValidator.new('Integer', [0, 1])
      return false unless use_tls_validator.valid?(@use_tls)
      return false if !@quorum.nil? && @quorum > 100
      return false if !@quorum.nil? && @quorum < 0
      type_validator = EnumAttributeValidator.new('String', ["random", "hash", "client"])
      return false unless type_validator.valid?(@type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] use_tls Object to be assigned
    def use_tls=(use_tls)
      validator = EnumAttributeValidator.new('Integer', [0, 1])
      unless validator.valid?(use_tls)
        fail ArgumentError, "invalid value for \"use_tls\", must be one of #{validator.allowable_values}."
      end
      @use_tls = use_tls
    end

    # Custom attribute writer method with validation
    # @param [Object] quorum Value to be assigned
    def quorum=(quorum)
      if !quorum.nil? && quorum > 100
        fail ArgumentError, 'invalid value for "quorum", must be smaller than or equal to 100.'
      end

      if !quorum.nil? && quorum < 0
        fail ArgumentError, 'invalid value for "quorum", must be greater than or equal to 0.'
      end

      @quorum = quorum
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["random", "hash", "client"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          tls_ca_cert == o.tls_ca_cert &&
          tls_client_cert == o.tls_client_cert &&
          tls_client_key == o.tls_client_key &&
          tls_cert_hostname == o.tls_cert_hostname &&
          use_tls == o.use_tls &&
          name == o.name &&
          shield == o.shield &&
          request_condition == o.request_condition &&
          max_conn_default == o.max_conn_default &&
          connect_timeout == o.connect_timeout &&
          first_byte_timeout == o.first_byte_timeout &&
          quorum == o.quorum &&
          tls_ciphers == o.tls_ciphers &&
          tls_sni_hostname == o.tls_sni_hostname &&
          tls_check_cert == o.tls_check_cert &&
          min_tls_version == o.min_tls_version &&
          max_tls_version == o.max_tls_version &&
          healthcheck == o.healthcheck &&
          comment == o.comment &&
          type == o.type &&
          override_host == o.override_host
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [tls_ca_cert, tls_client_cert, tls_client_key, tls_cert_hostname, use_tls, name, shield, request_condition, max_conn_default, connect_timeout, first_byte_timeout, quorum, tls_ciphers, tls_sni_hostname, tls_check_cert, min_tls_version, max_tls_version, healthcheck, comment, type, override_host].hash
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
