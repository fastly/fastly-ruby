=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'date'
require 'time'

module Fastly
  class WafFirewallVersionResponseDataAttributes
    # Date and time in ISO 8601 format.
    attr_accessor :created_at

    # Date and time in ISO 8601 format.
    attr_accessor :deleted_at

    # Date and time in ISO 8601 format.
    attr_accessor :updated_at

    # Whether a specific firewall version is currently deployed.
    attr_accessor :active

    # The number of active Fastly rules set to block.
    attr_accessor :active_rules_fastly_block_count

    # The number of active Fastly rules set to log.
    attr_accessor :active_rules_fastly_log_count

    # The number of active Fastly rules set to score.
    attr_accessor :active_rules_fastly_score_count

    # The number of active OWASP rules set to block.
    attr_accessor :active_rules_owasp_block_count

    # The number of active OWASP rules set to log.
    attr_accessor :active_rules_owasp_log_count

    # The number of active OWASP rules set to score.
    attr_accessor :active_rules_owasp_score_count

    # The number of active Trustwave rules set to block.
    attr_accessor :active_rules_trustwave_block_count

    # The number of active Trustwave rules set to log.
    attr_accessor :active_rules_trustwave_log_count

    # The status of the last deployment of this firewall version.
    attr_accessor :last_deployment_status

    # Time-stamp (GMT) indicating when the firewall version was last deployed.
    attr_accessor :deployed_at

    # Contains error message if the firewall version fails to deploy.
    attr_accessor :error

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
        :'active' => :'active',
        :'active_rules_fastly_block_count' => :'active_rules_fastly_block_count',
        :'active_rules_fastly_log_count' => :'active_rules_fastly_log_count',
        :'active_rules_fastly_score_count' => :'active_rules_fastly_score_count',
        :'active_rules_owasp_block_count' => :'active_rules_owasp_block_count',
        :'active_rules_owasp_log_count' => :'active_rules_owasp_log_count',
        :'active_rules_owasp_score_count' => :'active_rules_owasp_score_count',
        :'active_rules_trustwave_block_count' => :'active_rules_trustwave_block_count',
        :'active_rules_trustwave_log_count' => :'active_rules_trustwave_log_count',
        :'last_deployment_status' => :'last_deployment_status',
        :'deployed_at' => :'deployed_at',
        :'error' => :'error'
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
        :'active' => :'Boolean',
        :'active_rules_fastly_block_count' => :'Integer',
        :'active_rules_fastly_log_count' => :'Integer',
        :'active_rules_fastly_score_count' => :'Integer',
        :'active_rules_owasp_block_count' => :'Integer',
        :'active_rules_owasp_log_count' => :'Integer',
        :'active_rules_owasp_score_count' => :'Integer',
        :'active_rules_trustwave_block_count' => :'Integer',
        :'active_rules_trustwave_log_count' => :'Integer',
        :'last_deployment_status' => :'String',
        :'deployed_at' => :'String',
        :'error' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.fastly_nullable
      Set.new([
        :'created_at',
        :'deleted_at',
        :'updated_at',
        :'last_deployment_status',
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.fastly_all_of
      [
      :'Timestamps',
      :'WafFirewallVersionResponseDataAttributesAllOf'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Fastly::WafFirewallVersionResponseDataAttributes` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Fastly::WafFirewallVersionResponseDataAttributes`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
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

      if attributes.key?(:'active')
        self.active = attributes[:'active']
      end

      if attributes.key?(:'active_rules_fastly_block_count')
        self.active_rules_fastly_block_count = attributes[:'active_rules_fastly_block_count']
      end

      if attributes.key?(:'active_rules_fastly_log_count')
        self.active_rules_fastly_log_count = attributes[:'active_rules_fastly_log_count']
      end

      if attributes.key?(:'active_rules_fastly_score_count')
        self.active_rules_fastly_score_count = attributes[:'active_rules_fastly_score_count']
      end

      if attributes.key?(:'active_rules_owasp_block_count')
        self.active_rules_owasp_block_count = attributes[:'active_rules_owasp_block_count']
      end

      if attributes.key?(:'active_rules_owasp_log_count')
        self.active_rules_owasp_log_count = attributes[:'active_rules_owasp_log_count']
      end

      if attributes.key?(:'active_rules_owasp_score_count')
        self.active_rules_owasp_score_count = attributes[:'active_rules_owasp_score_count']
      end

      if attributes.key?(:'active_rules_trustwave_block_count')
        self.active_rules_trustwave_block_count = attributes[:'active_rules_trustwave_block_count']
      end

      if attributes.key?(:'active_rules_trustwave_log_count')
        self.active_rules_trustwave_log_count = attributes[:'active_rules_trustwave_log_count']
      end

      if attributes.key?(:'last_deployment_status')
        self.last_deployment_status = attributes[:'last_deployment_status']
      end

      if attributes.key?(:'deployed_at')
        self.deployed_at = attributes[:'deployed_at']
      end

      if attributes.key?(:'error')
        self.error = attributes[:'error']
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
      last_deployment_status_validator = EnumAttributeValidator.new('String', ["null", "pending", "in progress", "completed", "failed"])
      return false unless last_deployment_status_validator.valid?(@last_deployment_status)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] last_deployment_status Object to be assigned
    def last_deployment_status=(last_deployment_status)
      validator = EnumAttributeValidator.new('String', ["null", "pending", "in progress", "completed", "failed"])
      unless validator.valid?(last_deployment_status)
        fail ArgumentError, "invalid value for \"last_deployment_status\", must be one of #{validator.allowable_values}."
      end
      @last_deployment_status = last_deployment_status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          created_at == o.created_at &&
          deleted_at == o.deleted_at &&
          updated_at == o.updated_at &&
          active == o.active &&
          active_rules_fastly_block_count == o.active_rules_fastly_block_count &&
          active_rules_fastly_log_count == o.active_rules_fastly_log_count &&
          active_rules_fastly_score_count == o.active_rules_fastly_score_count &&
          active_rules_owasp_block_count == o.active_rules_owasp_block_count &&
          active_rules_owasp_log_count == o.active_rules_owasp_log_count &&
          active_rules_owasp_score_count == o.active_rules_owasp_score_count &&
          active_rules_trustwave_block_count == o.active_rules_trustwave_block_count &&
          active_rules_trustwave_log_count == o.active_rules_trustwave_log_count &&
          last_deployment_status == o.last_deployment_status &&
          deployed_at == o.deployed_at &&
          error == o.error
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [created_at, deleted_at, updated_at, active, active_rules_fastly_block_count, active_rules_fastly_log_count, active_rules_fastly_score_count, active_rules_owasp_block_count, active_rules_owasp_log_count, active_rules_owasp_score_count, active_rules_trustwave_block_count, active_rules_trustwave_log_count, last_deployment_status, deployed_at, error].hash
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
