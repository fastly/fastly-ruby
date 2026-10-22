=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'date'
require 'time'

module Fastly
  # A session log. Other than `firewall_enabled` (always present), `firewall_*` fields are only present when AI Firewall ran on a request in this session. They're absent (not merely empty) otherwise, so their absence and an empty value mean different things. 
  class ArcSession
    # The unique identifier of the session.
    attr_accessor :id

    # The ID of the virtual key used for this session.
    attr_accessor :virtual_key_id

    # The AI model identifier used.
    attr_accessor :model

    # The name of the provider connection that ultimately served the session.
    attr_accessor :provider

    # The ID of the provider connection that ultimately served the session.
    attr_accessor :provider_connection_id

    # The number of requests made in this session.
    attr_accessor :requests

    # The total input tokens consumed in this session.
    attr_accessor :input_tokens

    # The total output tokens generated in this session.
    attr_accessor :output_tokens

    # The number of AI Firewall violations detected in this session.
    attr_accessor :violations

    # Whether AI Firewall was enabled for this session's virtual key.
    attr_accessor :firewall_enabled

    # The date and time the session was created, in RFC 3339 format.
    attr_accessor :created_at

    # The date and time the session was last updated, in RFC 3339 format.
    attr_accessor :updated_at

    # The request and response pairs recorded for this session.
    attr_accessor :logs

    # The display name of the virtual key used for this session.
    attr_accessor :virtual_key_name

    # The ID of the provider connection originally requested, before any failover occurred.
    attr_accessor :primary_provider

    # The outcome AI Firewall reached for this session. Present only when AI Firewall ran.
    attr_accessor :firewall_outcome

    # The AI Firewall stage that produced the outcome (for example, the request or response stage). Present only when AI Firewall ran.
    attr_accessor :firewall_stage

    # The AI Firewall policy that was applied. Present only when AI Firewall ran.
    attr_accessor :firewall_policy

    # Why AI Firewall inspection was incomplete, if applicable. Present only when AI Firewall ran and inspection didn't complete.
    attr_accessor :firewall_incomplete_reason

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'virtual_key_id' => :'virtual_key_id',
        :'model' => :'model',
        :'provider' => :'provider',
        :'provider_connection_id' => :'provider_connection_id',
        :'requests' => :'requests',
        :'input_tokens' => :'input_tokens',
        :'output_tokens' => :'output_tokens',
        :'violations' => :'violations',
        :'firewall_enabled' => :'firewall_enabled',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at',
        :'logs' => :'logs',
        :'virtual_key_name' => :'virtual_key_name',
        :'primary_provider' => :'primary_provider',
        :'firewall_outcome' => :'firewall_outcome',
        :'firewall_stage' => :'firewall_stage',
        :'firewall_policy' => :'firewall_policy',
        :'firewall_incomplete_reason' => :'firewall_incomplete_reason'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.fastly_types
      {
        :'id' => :'String',
        :'virtual_key_id' => :'String',
        :'model' => :'String',
        :'provider' => :'String',
        :'provider_connection_id' => :'String',
        :'requests' => :'Integer',
        :'input_tokens' => :'Integer',
        :'output_tokens' => :'Integer',
        :'violations' => :'Integer',
        :'firewall_enabled' => :'Boolean',
        :'created_at' => :'Time',
        :'updated_at' => :'Time',
        :'logs' => :'Array<ArcSessionLogEntry>',
        :'virtual_key_name' => :'String',
        :'primary_provider' => :'String',
        :'firewall_outcome' => :'String',
        :'firewall_stage' => :'String',
        :'firewall_policy' => :'String',
        :'firewall_incomplete_reason' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Fastly::ArcSession` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Fastly::ArcSession`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'virtual_key_id')
        self.virtual_key_id = attributes[:'virtual_key_id']
      end

      if attributes.key?(:'model')
        self.model = attributes[:'model']
      end

      if attributes.key?(:'provider')
        self.provider = attributes[:'provider']
      end

      if attributes.key?(:'provider_connection_id')
        self.provider_connection_id = attributes[:'provider_connection_id']
      end

      if attributes.key?(:'requests')
        self.requests = attributes[:'requests']
      end

      if attributes.key?(:'input_tokens')
        self.input_tokens = attributes[:'input_tokens']
      end

      if attributes.key?(:'output_tokens')
        self.output_tokens = attributes[:'output_tokens']
      end

      if attributes.key?(:'violations')
        self.violations = attributes[:'violations']
      end

      if attributes.key?(:'firewall_enabled')
        self.firewall_enabled = attributes[:'firewall_enabled']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'logs')
        if (value = attributes[:'logs']).is_a?(Array)
          self.logs = value
        end
      end

      if attributes.key?(:'virtual_key_name')
        self.virtual_key_name = attributes[:'virtual_key_name']
      end

      if attributes.key?(:'primary_provider')
        self.primary_provider = attributes[:'primary_provider']
      end

      if attributes.key?(:'firewall_outcome')
        self.firewall_outcome = attributes[:'firewall_outcome']
      end

      if attributes.key?(:'firewall_stage')
        self.firewall_stage = attributes[:'firewall_stage']
      end

      if attributes.key?(:'firewall_policy')
        self.firewall_policy = attributes[:'firewall_policy']
      end

      if attributes.key?(:'firewall_incomplete_reason')
        self.firewall_incomplete_reason = attributes[:'firewall_incomplete_reason']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @virtual_key_id.nil?
        invalid_properties.push('invalid value for "virtual_key_id", virtual_key_id cannot be nil.')
      end

      if @model.nil?
        invalid_properties.push('invalid value for "model", model cannot be nil.')
      end

      if @provider.nil?
        invalid_properties.push('invalid value for "provider", provider cannot be nil.')
      end

      if @provider_connection_id.nil?
        invalid_properties.push('invalid value for "provider_connection_id", provider_connection_id cannot be nil.')
      end

      if @requests.nil?
        invalid_properties.push('invalid value for "requests", requests cannot be nil.')
      end

      if @input_tokens.nil?
        invalid_properties.push('invalid value for "input_tokens", input_tokens cannot be nil.')
      end

      if @output_tokens.nil?
        invalid_properties.push('invalid value for "output_tokens", output_tokens cannot be nil.')
      end

      if @violations.nil?
        invalid_properties.push('invalid value for "violations", violations cannot be nil.')
      end

      if @firewall_enabled.nil?
        invalid_properties.push('invalid value for "firewall_enabled", firewall_enabled cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @updated_at.nil?
        invalid_properties.push('invalid value for "updated_at", updated_at cannot be nil.')
      end

      if @logs.nil?
        invalid_properties.push('invalid value for "logs", logs cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @virtual_key_id.nil?
      return false if @model.nil?
      return false if @provider.nil?
      return false if @provider_connection_id.nil?
      return false if @requests.nil?
      return false if @input_tokens.nil?
      return false if @output_tokens.nil?
      return false if @violations.nil?
      return false if @firewall_enabled.nil?
      return false if @created_at.nil?
      return false if @updated_at.nil?
      return false if @logs.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          virtual_key_id == o.virtual_key_id &&
          model == o.model &&
          provider == o.provider &&
          provider_connection_id == o.provider_connection_id &&
          requests == o.requests &&
          input_tokens == o.input_tokens &&
          output_tokens == o.output_tokens &&
          violations == o.violations &&
          firewall_enabled == o.firewall_enabled &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          logs == o.logs &&
          virtual_key_name == o.virtual_key_name &&
          primary_provider == o.primary_provider &&
          firewall_outcome == o.firewall_outcome &&
          firewall_stage == o.firewall_stage &&
          firewall_policy == o.firewall_policy &&
          firewall_incomplete_reason == o.firewall_incomplete_reason
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, virtual_key_id, model, provider, provider_connection_id, requests, input_tokens, output_tokens, violations, firewall_enabled, created_at, updated_at, logs, virtual_key_name, primary_provider, firewall_outcome, firewall_stage, firewall_policy, firewall_incomplete_reason].hash
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
