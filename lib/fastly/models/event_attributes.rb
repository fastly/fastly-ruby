=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0


=end

require 'date'
require 'time'

module Fastly
  class EventAttributes
    # Indicates if event was performed by Fastly.
    attr_accessor :admin

    # Date and time in ISO 8601 format.
    attr_accessor :created_at

    attr_accessor :customer_id

    # Description of the event.
    attr_accessor :description

    # Type of event. Can be used with `filter[event_type]`
    attr_accessor :event_type

    # IP addresses that the event was requested from.
    attr_accessor :ip

    # Hash of key value pairs of additional information.
    attr_accessor :metadata

    attr_accessor :service_id

    attr_accessor :user_id

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
        :'admin' => :'admin',
        :'created_at' => :'created_at',
        :'customer_id' => :'customer_id',
        :'description' => :'description',
        :'event_type' => :'event_type',
        :'ip' => :'ip',
        :'metadata' => :'metadata',
        :'service_id' => :'service_id',
        :'user_id' => :'user_id'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.fastly_types
      {
        :'admin' => :'Boolean',
        :'created_at' => :'Time',
        :'customer_id' => :'String',
        :'description' => :'String',
        :'event_type' => :'String',
        :'ip' => :'String',
        :'metadata' => :'Object',
        :'service_id' => :'String',
        :'user_id' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.fastly_nullable
      Set.new([
        :'created_at',
        :'customer_id',
        :'service_id',
        :'user_id'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Fastly::EventAttributes` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Fastly::EventAttributes`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'admin')
        self.admin = attributes[:'admin']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'customer_id')
        self.customer_id = attributes[:'customer_id']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'event_type')
        self.event_type = attributes[:'event_type']
      end

      if attributes.key?(:'ip')
        self.ip = attributes[:'ip']
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end

      if attributes.key?(:'service_id')
        self.service_id = attributes[:'service_id']
      end

      if attributes.key?(:'user_id')
        self.user_id = attributes[:'user_id']
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
      event_type_validator = EnumAttributeValidator.new('String', ["api_key.create", "acl.create", "acl.delete", "acl.update", "address.create", "address.delete", "address.update", "backend.create", "backend.delete", "backend.update", "billing.contact_update", "cache_settings.create", "cache_settings.delete", "cache_settings.update", "customer.create", "customer.pricing", "customer.update", "customer_feature.create", "customer_feature.delete", "director.create", "director.delete", "director.update", "director_backend.create", "director_backend.delete", "domain.create", "domain.delete", "domain.update", "gzip.create", "gzip.delete", "gzip.update", "header.create", "header.delete", "header.update", "healthcheck.create", "healthcheck.delete", "healthcheck.update", "invitation.accept", "invitation.sent", "invoice.failed_payment", "invoice.payment", "io_settings.create", "io_settings.delete", "io_settings.update", "logging.create", "logging.delete", "logging.update", "pool.create", "pool.delete", "pool.update", "request_settings.create", "request_settings.delete", "request_settings.update", "response_object.create", "response_object.delete", "response_object.update", "rule_status.update", "rule_status.upsert", "server.create", "server.delete", "server.update", "service.create", "service.delete", "service.move", "service.move_destination", "service.move_source", "service.purge_all", "service.update", "service_authorization.create", "service_authorization.delete", "service_authorization.update", "tls.bulk_certificate.create", "tls.bulk_certificate.delete", "tls.bulk_certificate.update", "tls.certificate.create", "tls.certificate.expiration_email", "tls.certificate.update", "tls.certificate.delete", "tls.configuration.update", "tls.private_key.create", "tls.private_key.delete", "tls.activation.enable", "tls.activation.update", "tls.activation.disable", "tls.globalsign.domain.create", "tls.globalsign.domain.verify", "tls.globalsign.domain.delete", "tls.subscription.create", "tls.subscription.delete", "tls.subscription.dns_check_email", "token.create", "token.destroy", "two_factor_auth.disable", "two_factor_auth.enable", "user.create", "user.destroy", "user.lock", "user.login", "user.login_failure", "user.logout", "user.password_update", "user.unlock", "user.update", "vcl.create", "vcl.delete", "vcl.update", "version.activate", "version.clone", "version.copy", "version.copy_destination", "version.copy_source", "version.create", "version.deactivate", "version.lock", "version.update", "waf.configuration_set_update", "waf.create", "waf.delete", "waf.update", "waf.enable", "waf.disable", "waf.owasp.create", "waf.owasp.update", "waf.ruleset.deploy", "waf.ruleset.deploy_failure", "wordpress.create", "wordpress.delete", "wordpress.update"])
      return false unless event_type_validator.valid?(@event_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] event_type Object to be assigned
    def event_type=(event_type)
      validator = EnumAttributeValidator.new('String', ["api_key.create", "acl.create", "acl.delete", "acl.update", "address.create", "address.delete", "address.update", "backend.create", "backend.delete", "backend.update", "billing.contact_update", "cache_settings.create", "cache_settings.delete", "cache_settings.update", "customer.create", "customer.pricing", "customer.update", "customer_feature.create", "customer_feature.delete", "director.create", "director.delete", "director.update", "director_backend.create", "director_backend.delete", "domain.create", "domain.delete", "domain.update", "gzip.create", "gzip.delete", "gzip.update", "header.create", "header.delete", "header.update", "healthcheck.create", "healthcheck.delete", "healthcheck.update", "invitation.accept", "invitation.sent", "invoice.failed_payment", "invoice.payment", "io_settings.create", "io_settings.delete", "io_settings.update", "logging.create", "logging.delete", "logging.update", "pool.create", "pool.delete", "pool.update", "request_settings.create", "request_settings.delete", "request_settings.update", "response_object.create", "response_object.delete", "response_object.update", "rule_status.update", "rule_status.upsert", "server.create", "server.delete", "server.update", "service.create", "service.delete", "service.move", "service.move_destination", "service.move_source", "service.purge_all", "service.update", "service_authorization.create", "service_authorization.delete", "service_authorization.update", "tls.bulk_certificate.create", "tls.bulk_certificate.delete", "tls.bulk_certificate.update", "tls.certificate.create", "tls.certificate.expiration_email", "tls.certificate.update", "tls.certificate.delete", "tls.configuration.update", "tls.private_key.create", "tls.private_key.delete", "tls.activation.enable", "tls.activation.update", "tls.activation.disable", "tls.globalsign.domain.create", "tls.globalsign.domain.verify", "tls.globalsign.domain.delete", "tls.subscription.create", "tls.subscription.delete", "tls.subscription.dns_check_email", "token.create", "token.destroy", "two_factor_auth.disable", "two_factor_auth.enable", "user.create", "user.destroy", "user.lock", "user.login", "user.login_failure", "user.logout", "user.password_update", "user.unlock", "user.update", "vcl.create", "vcl.delete", "vcl.update", "version.activate", "version.clone", "version.copy", "version.copy_destination", "version.copy_source", "version.create", "version.deactivate", "version.lock", "version.update", "waf.configuration_set_update", "waf.create", "waf.delete", "waf.update", "waf.enable", "waf.disable", "waf.owasp.create", "waf.owasp.update", "waf.ruleset.deploy", "waf.ruleset.deploy_failure", "wordpress.create", "wordpress.delete", "wordpress.update"])
      unless validator.valid?(event_type)
        fail ArgumentError, "invalid value for \"event_type\", must be one of #{validator.allowable_values}."
      end
      @event_type = event_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          admin == o.admin &&
          created_at == o.created_at &&
          customer_id == o.customer_id &&
          description == o.description &&
          event_type == o.event_type &&
          ip == o.ip &&
          metadata == o.metadata &&
          service_id == o.service_id &&
          user_id == o.user_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [admin, created_at, customer_id, description, event_type, ip, metadata, service_id, user_id].hash
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
