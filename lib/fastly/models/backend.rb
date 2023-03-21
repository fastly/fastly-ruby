=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'date'
require 'time'

module Fastly
  class Backend
    # A hostname, IPv4, or IPv6 address for the backend. This is the preferred way to specify the location of your backend.
    attr_accessor :address

    # Whether or not this backend should be automatically load balanced. If true, all backends with this setting that don't have a `request_condition` will be selected based on their `weight`.
    attr_accessor :auto_loadbalance

    # Maximum duration in milliseconds that Fastly will wait while receiving no data on a download from a backend. If exceeded, the response received so far will be considered complete and the fetch will end. May be set at runtime using `bereq.between_bytes_timeout`.
    attr_accessor :between_bytes_timeout

    # Unused.
    attr_accessor :client_cert

    # A freeform descriptive note.
    attr_accessor :comment

    # Maximum duration in milliseconds to wait for a connection to this backend to be established. If exceeded, the connection is aborted and a synthethic `503` response will be presented instead. May be set at runtime using `bereq.connect_timeout`.
    attr_accessor :connect_timeout

    # Maximum duration in milliseconds to wait for the server response to begin after a TCP connection is established and the request has been sent. If exceeded, the connection is aborted and a synthethic `503` response will be presented instead. May be set at runtime using `bereq.first_byte_timeout`.
    attr_accessor :first_byte_timeout

    # The name of the healthcheck to use with this backend.
    attr_accessor :healthcheck

    # The hostname of the backend. May be used as an alternative to `address` to set the backend location.
    attr_accessor :hostname

    # IPv4 address of the backend. May be used as an alternative to `address` to set the backend location.
    attr_accessor :ipv4

    # IPv6 address of the backend. May be used as an alternative to `address` to set the backend location.
    attr_accessor :ipv6

    # How long in seconds to keep a persistent connection to the backend between requests.
    attr_accessor :keepalive_time

    # Maximum number of concurrent connections this backend will accept.
    attr_accessor :max_conn

    # Maximum allowed TLS version on SSL connections to this backend. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic `503` error response will be generated.
    attr_accessor :max_tls_version

    # Minimum allowed TLS version on SSL connections to this backend. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic `503` error response will be generated.
    attr_accessor :min_tls_version

    # The name of the backend.
    attr_accessor :name

    # If set, will replace the client-supplied HTTP `Host` header on connections to this backend. Applied after VCL has been processed, so this setting will take precedence over changing `bereq.http.Host` in VCL.
    attr_accessor :override_host

    # Port on which the backend server is listening for connections from Fastly. Setting `port` to 80 or 443 will also set `use_ssl` automatically (to false and true respectively), unless explicitly overridden by setting `use_ssl` in the same request.
    attr_accessor :port

    # Name of a Condition, which if satisfied, will select this backend during a request. If set, will override any `auto_loadbalance` setting. By default, the first backend added to a service is selected for all requests.
    attr_accessor :request_condition

    # Identifier of the POP to use as a [shield](https://docs.fastly.com/en/guides/shielding).
    attr_accessor :shield

    # CA certificate attached to origin.
    attr_accessor :ssl_ca_cert

    # Overrides `ssl_hostname`, but only for cert verification. Does not affect SNI at all.
    attr_accessor :ssl_cert_hostname

    # Be strict on checking SSL certs.
    attr_accessor :ssl_check_cert

    # List of [OpenSSL ciphers](https://www.openssl.org/docs/manmaster/man1/ciphers.html) to support for connections to this origin. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic `503` error response will be generated.
    attr_accessor :ssl_ciphers

    # Client certificate attached to origin.
    attr_accessor :ssl_client_cert

    # Client key attached to origin.
    attr_accessor :ssl_client_key

    # Use `ssl_cert_hostname` and `ssl_sni_hostname` to configure certificate validation.
    attr_accessor :ssl_hostname

    # Overrides `ssl_hostname`, but only for SNI in the handshake. Does not affect cert validation at all.
    attr_accessor :ssl_sni_hostname

    # Whether or not to require TLS for connections to this backend.
    attr_accessor :use_ssl

    # Weight used to load balance this backend against others. May be any positive integer. If `auto_loadbalance` is true, the chance of this backend being selected is equal to its own weight over the sum of all weights for backends that have `auto_loadbalance` set to true.
    attr_accessor :weight

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'address' => :'address',
        :'auto_loadbalance' => :'auto_loadbalance',
        :'between_bytes_timeout' => :'between_bytes_timeout',
        :'client_cert' => :'client_cert',
        :'comment' => :'comment',
        :'connect_timeout' => :'connect_timeout',
        :'first_byte_timeout' => :'first_byte_timeout',
        :'healthcheck' => :'healthcheck',
        :'hostname' => :'hostname',
        :'ipv4' => :'ipv4',
        :'ipv6' => :'ipv6',
        :'keepalive_time' => :'keepalive_time',
        :'max_conn' => :'max_conn',
        :'max_tls_version' => :'max_tls_version',
        :'min_tls_version' => :'min_tls_version',
        :'name' => :'name',
        :'override_host' => :'override_host',
        :'port' => :'port',
        :'request_condition' => :'request_condition',
        :'shield' => :'shield',
        :'ssl_ca_cert' => :'ssl_ca_cert',
        :'ssl_cert_hostname' => :'ssl_cert_hostname',
        :'ssl_check_cert' => :'ssl_check_cert',
        :'ssl_ciphers' => :'ssl_ciphers',
        :'ssl_client_cert' => :'ssl_client_cert',
        :'ssl_client_key' => :'ssl_client_key',
        :'ssl_hostname' => :'ssl_hostname',
        :'ssl_sni_hostname' => :'ssl_sni_hostname',
        :'use_ssl' => :'use_ssl',
        :'weight' => :'weight'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.fastly_types
      {
        :'address' => :'String',
        :'auto_loadbalance' => :'Boolean',
        :'between_bytes_timeout' => :'Integer',
        :'client_cert' => :'String',
        :'comment' => :'String',
        :'connect_timeout' => :'Integer',
        :'first_byte_timeout' => :'Integer',
        :'healthcheck' => :'String',
        :'hostname' => :'String',
        :'ipv4' => :'String',
        :'ipv6' => :'String',
        :'keepalive_time' => :'Integer',
        :'max_conn' => :'Integer',
        :'max_tls_version' => :'String',
        :'min_tls_version' => :'String',
        :'name' => :'String',
        :'override_host' => :'String',
        :'port' => :'Integer',
        :'request_condition' => :'String',
        :'shield' => :'String',
        :'ssl_ca_cert' => :'String',
        :'ssl_cert_hostname' => :'String',
        :'ssl_check_cert' => :'Boolean',
        :'ssl_ciphers' => :'String',
        :'ssl_client_cert' => :'String',
        :'ssl_client_key' => :'String',
        :'ssl_hostname' => :'String',
        :'ssl_sni_hostname' => :'String',
        :'use_ssl' => :'Boolean',
        :'weight' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.fastly_nullable
      Set.new([
        :'client_cert',
        :'comment',
        :'healthcheck',
        :'hostname',
        :'ipv4',
        :'ipv6',
        :'keepalive_time',
        :'max_tls_version',
        :'min_tls_version',
        :'override_host',
        :'shield',
        :'ssl_ca_cert',
        :'ssl_cert_hostname',
        :'ssl_ciphers',
        :'ssl_client_cert',
        :'ssl_client_key',
        :'ssl_hostname',
        :'ssl_sni_hostname',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Fastly::Backend` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Fastly::Backend`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.key?(:'auto_loadbalance')
        self.auto_loadbalance = attributes[:'auto_loadbalance']
      end

      if attributes.key?(:'between_bytes_timeout')
        self.between_bytes_timeout = attributes[:'between_bytes_timeout']
      end

      if attributes.key?(:'client_cert')
        self.client_cert = attributes[:'client_cert']
      end

      if attributes.key?(:'comment')
        self.comment = attributes[:'comment']
      end

      if attributes.key?(:'connect_timeout')
        self.connect_timeout = attributes[:'connect_timeout']
      end

      if attributes.key?(:'first_byte_timeout')
        self.first_byte_timeout = attributes[:'first_byte_timeout']
      end

      if attributes.key?(:'healthcheck')
        self.healthcheck = attributes[:'healthcheck']
      end

      if attributes.key?(:'hostname')
        self.hostname = attributes[:'hostname']
      end

      if attributes.key?(:'ipv4')
        self.ipv4 = attributes[:'ipv4']
      end

      if attributes.key?(:'ipv6')
        self.ipv6 = attributes[:'ipv6']
      end

      if attributes.key?(:'keepalive_time')
        self.keepalive_time = attributes[:'keepalive_time']
      end

      if attributes.key?(:'max_conn')
        self.max_conn = attributes[:'max_conn']
      end

      if attributes.key?(:'max_tls_version')
        self.max_tls_version = attributes[:'max_tls_version']
      end

      if attributes.key?(:'min_tls_version')
        self.min_tls_version = attributes[:'min_tls_version']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'override_host')
        self.override_host = attributes[:'override_host']
      end

      if attributes.key?(:'port')
        self.port = attributes[:'port']
      end

      if attributes.key?(:'request_condition')
        self.request_condition = attributes[:'request_condition']
      end

      if attributes.key?(:'shield')
        self.shield = attributes[:'shield']
      end

      if attributes.key?(:'ssl_ca_cert')
        self.ssl_ca_cert = attributes[:'ssl_ca_cert']
      end

      if attributes.key?(:'ssl_cert_hostname')
        self.ssl_cert_hostname = attributes[:'ssl_cert_hostname']
      end

      if attributes.key?(:'ssl_check_cert')
        self.ssl_check_cert = attributes[:'ssl_check_cert']
      else
        self.ssl_check_cert = true
      end

      if attributes.key?(:'ssl_ciphers')
        self.ssl_ciphers = attributes[:'ssl_ciphers']
      end

      if attributes.key?(:'ssl_client_cert')
        self.ssl_client_cert = attributes[:'ssl_client_cert']
      end

      if attributes.key?(:'ssl_client_key')
        self.ssl_client_key = attributes[:'ssl_client_key']
      end

      if attributes.key?(:'ssl_hostname')
        self.ssl_hostname = attributes[:'ssl_hostname']
      end

      if attributes.key?(:'ssl_sni_hostname')
        self.ssl_sni_hostname = attributes[:'ssl_sni_hostname']
      end

      if attributes.key?(:'use_ssl')
        self.use_ssl = attributes[:'use_ssl']
      end

      if attributes.key?(:'weight')
        self.weight = attributes[:'weight']
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
          address == o.address &&
          auto_loadbalance == o.auto_loadbalance &&
          between_bytes_timeout == o.between_bytes_timeout &&
          client_cert == o.client_cert &&
          comment == o.comment &&
          connect_timeout == o.connect_timeout &&
          first_byte_timeout == o.first_byte_timeout &&
          healthcheck == o.healthcheck &&
          hostname == o.hostname &&
          ipv4 == o.ipv4 &&
          ipv6 == o.ipv6 &&
          keepalive_time == o.keepalive_time &&
          max_conn == o.max_conn &&
          max_tls_version == o.max_tls_version &&
          min_tls_version == o.min_tls_version &&
          name == o.name &&
          override_host == o.override_host &&
          port == o.port &&
          request_condition == o.request_condition &&
          shield == o.shield &&
          ssl_ca_cert == o.ssl_ca_cert &&
          ssl_cert_hostname == o.ssl_cert_hostname &&
          ssl_check_cert == o.ssl_check_cert &&
          ssl_ciphers == o.ssl_ciphers &&
          ssl_client_cert == o.ssl_client_cert &&
          ssl_client_key == o.ssl_client_key &&
          ssl_hostname == o.ssl_hostname &&
          ssl_sni_hostname == o.ssl_sni_hostname &&
          use_ssl == o.use_ssl &&
          weight == o.weight
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [address, auto_loadbalance, between_bytes_timeout, client_cert, comment, connect_timeout, first_byte_timeout, healthcheck, hostname, ipv4, ipv6, keepalive_time, max_conn, max_tls_version, min_tls_version, name, override_host, port, request_condition, shield, ssl_ca_cert, ssl_cert_hostname, ssl_check_cert, ssl_ciphers, ssl_client_cert, ssl_client_key, ssl_hostname, ssl_sni_hostname, use_ssl, weight].hash
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
