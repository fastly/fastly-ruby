=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'date'
require 'time'

module Fastly
  # A signal detected during WAF simulation. The `type`, `detector`, `detector_scope`, and `redaction` fields are always present. The `location`, `name`, and `value` fields are present only when applicable to the signal category.
  class WafSimulateSignal
    # The type of signal detected (e.g., `SQLI`, `XSS`, `CMDEXE`, `TRAVERSAL`, `BACKDOOR`, `LOG4J-JNDI`, `BLOCKED`).
    attr_accessor :type

    # The detector engine that identified the signal (e.g., `SQLI`, `LIBINJECTIONV5`, `LIBINJECTIONJS`, or a rule ID).
    attr_accessor :detector

    # The scope of the detector that identified the signal. Derived from the signal type and detection type at simulation time. `system` — built-in WAF rule (e.g., `SQLI`, `XSS`). `workspace` — workspace-level custom rule or signal (e.g., `site.*` prefix). `account` — account-level custom signal (e.g., `corp.*` prefix). `unknown` — scope could not be determined (e.g., tags fetch failed or unrecognized type).
    attr_accessor :detector_scope

    # The redaction level applied to the detected value. Clients should handle unexpected string values gracefully, as new redaction types may be added.
    attr_accessor :redaction

    # Where in the request the signal was detected (e.g., `QUERYSTRING`, `POSTBODY`, `HEADER`, `HEADEROUT`, `POSTARG`). Present for detection signals; absent for custom and action signals.
    attr_accessor :location

    # The parameter or header name that triggered detection. Present when the WAF engine identifies a specific parameter or header.
    attr_accessor :name

    # The matched payload value that triggered signal detection. For detection signals, contains the matched content. For `BLOCKED` signals, carries the WAF response code as a string. Absent for custom signals.
    attr_accessor :value

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
        :'type' => :'type',
        :'detector' => :'detector',
        :'detector_scope' => :'detector_scope',
        :'redaction' => :'redaction',
        :'location' => :'location',
        :'name' => :'name',
        :'value' => :'value'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.fastly_types
      {
        :'type' => :'String',
        :'detector' => :'String',
        :'detector_scope' => :'String',
        :'redaction' => :'String',
        :'location' => :'String',
        :'name' => :'String',
        :'value' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Fastly::WafSimulateSignal` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Fastly::WafSimulateSignal`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'detector')
        self.detector = attributes[:'detector']
      end

      if attributes.key?(:'detector_scope')
        self.detector_scope = attributes[:'detector_scope']
      end

      if attributes.key?(:'redaction')
        self.redaction = attributes[:'redaction']
      end

      if attributes.key?(:'location')
        self.location = attributes[:'location']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'value')
        self.value = attributes[:'value']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @detector.nil?
        invalid_properties.push('invalid value for "detector", detector cannot be nil.')
      end

      if @detector_scope.nil?
        invalid_properties.push('invalid value for "detector_scope", detector_scope cannot be nil.')
      end

      if @redaction.nil?
        invalid_properties.push('invalid value for "redaction", redaction cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @type.nil?
      return false if @detector.nil?
      return false if @detector_scope.nil?
      detector_scope_validator = EnumAttributeValidator.new('String', ["system", "workspace", "account", "unknown"])
      return false unless detector_scope_validator.valid?(@detector_scope)
      return false if @redaction.nil?
      redaction_validator = EnumAttributeValidator.new('String', ["none", "param", "credit_card", "ssn", "guid", "iban", "request_header", "response_header", "custom_param", "custom_request_header", "custom_response_header", "jsession_id", "unknown"])
      return false unless redaction_validator.valid?(@redaction)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] detector_scope Object to be assigned
    def detector_scope=(detector_scope)
      validator = EnumAttributeValidator.new('String', ["system", "workspace", "account", "unknown"])
      unless validator.valid?(detector_scope)
        fail ArgumentError, "invalid value for \"detector_scope\", must be one of #{validator.allowable_values}."
      end
      @detector_scope = detector_scope
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] redaction Object to be assigned
    def redaction=(redaction)
      validator = EnumAttributeValidator.new('String', ["none", "param", "credit_card", "ssn", "guid", "iban", "request_header", "response_header", "custom_param", "custom_request_header", "custom_response_header", "jsession_id", "unknown"])
      unless validator.valid?(redaction)
        fail ArgumentError, "invalid value for \"redaction\", must be one of #{validator.allowable_values}."
      end
      @redaction = redaction
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          detector == o.detector &&
          detector_scope == o.detector_scope &&
          redaction == o.redaction &&
          location == o.location &&
          name == o.name &&
          value == o.value
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [type, detector, detector_scope, redaction, location, name, value].hash
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
