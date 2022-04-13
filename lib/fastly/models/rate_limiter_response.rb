=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'date'
require 'time'

module Fastly
  class RateLimiterResponse
    # A human readable name for the rate limiting rule.
    attr_accessor :name

    # The name of an Edge Dictionary containing URIs as keys. If not defined or `null`, all origin URIs will be rate limited.
    attr_accessor :uri_dictionary_name

    # Array of HTTP methods to apply rate limiting to.
    attr_accessor :http_methods

    # Upper limit of requests per second allowed by the rate limiter.
    attr_accessor :rps_limit

    # Number of seconds during which the RPS limit must be exceeded in order to trigger a violation.
    attr_accessor :window_size

    # Array of VCL variables used to generate a counter key to identify a client. Example variables include `req.http.Fastly-Client-IP`, `req.http.User-Agent`, or a custom header like `req.http.API-Key`.
    attr_accessor :client_key

    # Length of time in minutes that the rate limiter is in effect after the initial violation is detected.
    attr_accessor :penalty_box_duration

    # The action to take when a rate limiter violation is detected.
    attr_accessor :action

    attr_accessor :response

    # Name of existing response object. Required if `action` is `response_object`. Note that the rate limiter response is only updated to reflect the response object content when saving the rate limiter configuration.
    attr_accessor :response_object_name

    # Name of the type of logging endpoint to be used when action is `log_only`. The logging endpoint type is used to determine the appropriate log format to use when emitting log entries.
    attr_accessor :logger_type

    # Revision number of the rate limiting feature implementation. Defaults to the most recent revision.
    attr_accessor :feature_revision

    attr_accessor :service_id

    attr_accessor :version

    # Date and time in ISO 8601 format.
    attr_accessor :created_at

    # Date and time in ISO 8601 format.
    attr_accessor :deleted_at

    # Date and time in ISO 8601 format.
    attr_accessor :updated_at

    # Alphanumeric string identifying the rate limiter.
    attr_accessor :id

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
        :'uri_dictionary_name' => :'uri_dictionary_name',
        :'http_methods' => :'http_methods',
        :'rps_limit' => :'rps_limit',
        :'window_size' => :'window_size',
        :'client_key' => :'client_key',
        :'penalty_box_duration' => :'penalty_box_duration',
        :'action' => :'action',
        :'response' => :'response',
        :'response_object_name' => :'response_object_name',
        :'logger_type' => :'logger_type',
        :'feature_revision' => :'feature_revision',
        :'service_id' => :'service_id',
        :'version' => :'version',
        :'created_at' => :'created_at',
        :'deleted_at' => :'deleted_at',
        :'updated_at' => :'updated_at',
        :'id' => :'id'
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
        :'uri_dictionary_name' => :'String',
        :'http_methods' => :'Array<String>',
        :'rps_limit' => :'Integer',
        :'window_size' => :'Integer',
        :'client_key' => :'Array<String>',
        :'penalty_box_duration' => :'Integer',
        :'action' => :'String',
        :'response' => :'RateLimiterResponse1',
        :'response_object_name' => :'String',
        :'logger_type' => :'String',
        :'feature_revision' => :'Integer',
        :'service_id' => :'String',
        :'version' => :'Integer',
        :'created_at' => :'Time',
        :'deleted_at' => :'Time',
        :'updated_at' => :'Time',
        :'id' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.fastly_nullable
      Set.new([
        :'uri_dictionary_name',
        :'response',
        :'response_object_name',
        :'service_id',
        :'version',
        :'created_at',
        :'deleted_at',
        :'updated_at',
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.fastly_all_of
      [
      :'RateLimiter',
      :'RateLimiterResponseAllOf',
      :'ServiceIdAndVersion',
      :'Timestamps'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Fastly::RateLimiterResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Fastly::RateLimiterResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'uri_dictionary_name')
        self.uri_dictionary_name = attributes[:'uri_dictionary_name']
      end

      if attributes.key?(:'http_methods')
        if (value = attributes[:'http_methods']).is_a?(Array)
          self.http_methods = value
        end
      end

      if attributes.key?(:'rps_limit')
        self.rps_limit = attributes[:'rps_limit']
      end

      if attributes.key?(:'window_size')
        self.window_size = attributes[:'window_size']
      end

      if attributes.key?(:'client_key')
        if (value = attributes[:'client_key']).is_a?(Array)
          self.client_key = value
        end
      end

      if attributes.key?(:'penalty_box_duration')
        self.penalty_box_duration = attributes[:'penalty_box_duration']
      end

      if attributes.key?(:'action')
        self.action = attributes[:'action']
      end

      if attributes.key?(:'response')
        self.response = attributes[:'response']
      end

      if attributes.key?(:'response_object_name')
        self.response_object_name = attributes[:'response_object_name']
      end

      if attributes.key?(:'logger_type')
        self.logger_type = attributes[:'logger_type']
      end

      if attributes.key?(:'feature_revision')
        self.feature_revision = attributes[:'feature_revision']
      end

      if attributes.key?(:'service_id')
        self.service_id = attributes[:'service_id']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'deleted_at')
        self.deleted_at = attributes[:'deleted_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@name.nil? && @name.to_s.length > 255
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 255.')
      end

      if !@name.nil? && @name.to_s.length < 1
        invalid_properties.push('invalid value for "name", the character length must be great than or equal to 1.')
      end

      if !@uri_dictionary_name.nil? && @uri_dictionary_name.to_s.length > 255
        invalid_properties.push('invalid value for "uri_dictionary_name", the character length must be smaller than or equal to 255.')
      end

      if !@uri_dictionary_name.nil? && @uri_dictionary_name.to_s.length < 1
        invalid_properties.push('invalid value for "uri_dictionary_name", the character length must be great than or equal to 1.')
      end

      if !@http_methods.nil? && @http_methods.length < 1
        invalid_properties.push('invalid value for "http_methods", number of items must be greater than or equal to 1.')
      end

      if !@rps_limit.nil? && @rps_limit > 10000
        invalid_properties.push('invalid value for "rps_limit", must be smaller than or equal to 10000.')
      end

      if !@rps_limit.nil? && @rps_limit < 10
        invalid_properties.push('invalid value for "rps_limit", must be greater than or equal to 10.')
      end

      if !@client_key.nil? && @client_key.length < 1
        invalid_properties.push('invalid value for "client_key", number of items must be greater than or equal to 1.')
      end

      if !@penalty_box_duration.nil? && @penalty_box_duration > 60
        invalid_properties.push('invalid value for "penalty_box_duration", must be smaller than or equal to 60.')
      end

      if !@penalty_box_duration.nil? && @penalty_box_duration < 1
        invalid_properties.push('invalid value for "penalty_box_duration", must be greater than or equal to 1.')
      end

      if !@action.nil? && @action.to_s.length < 1
        invalid_properties.push('invalid value for "action", the character length must be great than or equal to 1.')
      end

      if !@response_object_name.nil? && @response_object_name.to_s.length > 255
        invalid_properties.push('invalid value for "response_object_name", the character length must be smaller than or equal to 255.')
      end

      if !@response_object_name.nil? && @response_object_name.to_s.length < 1
        invalid_properties.push('invalid value for "response_object_name", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@name.nil? && @name.to_s.length > 255
      return false if !@name.nil? && @name.to_s.length < 1
      return false if !@uri_dictionary_name.nil? && @uri_dictionary_name.to_s.length > 255
      return false if !@uri_dictionary_name.nil? && @uri_dictionary_name.to_s.length < 1
      return false if !@http_methods.nil? && @http_methods.length < 1
      return false if !@rps_limit.nil? && @rps_limit > 10000
      return false if !@rps_limit.nil? && @rps_limit < 10
      window_size_validator = EnumAttributeValidator.new('Integer', [1, 10, 60])
      return false unless window_size_validator.valid?(@window_size)
      return false if !@client_key.nil? && @client_key.length < 1
      return false if !@penalty_box_duration.nil? && @penalty_box_duration > 60
      return false if !@penalty_box_duration.nil? && @penalty_box_duration < 1
      action_validator = EnumAttributeValidator.new('String', ["response", "response_object", "log_only"])
      return false unless action_validator.valid?(@action)
      return false if !@action.nil? && @action.to_s.length < 1
      return false if !@response_object_name.nil? && @response_object_name.to_s.length > 255
      return false if !@response_object_name.nil? && @response_object_name.to_s.length < 1
      logger_type_validator = EnumAttributeValidator.new('String', ["azureblob", "bigquery", "cloudfiles", "datadog", "digitalocean", "elasticsearch", "ftp", "gcs", "googleanalytics", "heroku", "honeycomb", "http", "https", "kafka", "kinesis", "logentries", "loggly", "logshuttle", "newrelic", "openstack", "papertrail", "pubsub", "s3", "scalyr", "sftp", "splunk", "stackdriver", "sumologic", "syslog"])
      return false unless logger_type_validator.valid?(@logger_type)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if !name.nil? && name.to_s.length > 255
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 255.'
      end

      if !name.nil? && name.to_s.length < 1
        fail ArgumentError, 'invalid value for "name", the character length must be great than or equal to 1.'
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] uri_dictionary_name Value to be assigned
    def uri_dictionary_name=(uri_dictionary_name)
      if !uri_dictionary_name.nil? && uri_dictionary_name.to_s.length > 255
        fail ArgumentError, 'invalid value for "uri_dictionary_name", the character length must be smaller than or equal to 255.'
      end

      if !uri_dictionary_name.nil? && uri_dictionary_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "uri_dictionary_name", the character length must be great than or equal to 1.'
      end

      @uri_dictionary_name = uri_dictionary_name
    end

    # Custom attribute writer method with validation
    # @param [Object] rps_limit Value to be assigned
    def rps_limit=(rps_limit)
      if !rps_limit.nil? && rps_limit > 10000
        fail ArgumentError, 'invalid value for "rps_limit", must be smaller than or equal to 10000.'
      end

      if !rps_limit.nil? && rps_limit < 10
        fail ArgumentError, 'invalid value for "rps_limit", must be greater than or equal to 10.'
      end

      @rps_limit = rps_limit
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] window_size Object to be assigned
    def window_size=(window_size)
      validator = EnumAttributeValidator.new('Integer', [1, 10, 60])
      unless validator.valid?(window_size)
        fail ArgumentError, "invalid value for \"window_size\", must be one of #{validator.allowable_values}."
      end
      @window_size = window_size
    end

    # Custom attribute writer method with validation
    # @param [Object] client_key Value to be assigned
    def client_key=(client_key)
      if !client_key.nil? && client_key.length < 1
        fail ArgumentError, 'invalid value for "client_key", number of items must be greater than or equal to 1.'
      end

      @client_key = client_key
    end

    # Custom attribute writer method with validation
    # @param [Object] penalty_box_duration Value to be assigned
    def penalty_box_duration=(penalty_box_duration)
      if !penalty_box_duration.nil? && penalty_box_duration > 60
        fail ArgumentError, 'invalid value for "penalty_box_duration", must be smaller than or equal to 60.'
      end

      if !penalty_box_duration.nil? && penalty_box_duration < 1
        fail ArgumentError, 'invalid value for "penalty_box_duration", must be greater than or equal to 1.'
      end

      @penalty_box_duration = penalty_box_duration
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] action Object to be assigned
    def action=(action)
      validator = EnumAttributeValidator.new('String', ["response", "response_object", "log_only"])
      unless validator.valid?(action)
        fail ArgumentError, "invalid value for \"action\", must be one of #{validator.allowable_values}."
      end
      @action = action
    end

    # Custom attribute writer method with validation
    # @param [Object] response_object_name Value to be assigned
    def response_object_name=(response_object_name)
      if !response_object_name.nil? && response_object_name.to_s.length > 255
        fail ArgumentError, 'invalid value for "response_object_name", the character length must be smaller than or equal to 255.'
      end

      if !response_object_name.nil? && response_object_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "response_object_name", the character length must be great than or equal to 1.'
      end

      @response_object_name = response_object_name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] logger_type Object to be assigned
    def logger_type=(logger_type)
      validator = EnumAttributeValidator.new('String', ["azureblob", "bigquery", "cloudfiles", "datadog", "digitalocean", "elasticsearch", "ftp", "gcs", "googleanalytics", "heroku", "honeycomb", "http", "https", "kafka", "kinesis", "logentries", "loggly", "logshuttle", "newrelic", "openstack", "papertrail", "pubsub", "s3", "scalyr", "sftp", "splunk", "stackdriver", "sumologic", "syslog"])
      unless validator.valid?(logger_type)
        fail ArgumentError, "invalid value for \"logger_type\", must be one of #{validator.allowable_values}."
      end
      @logger_type = logger_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          uri_dictionary_name == o.uri_dictionary_name &&
          http_methods == o.http_methods &&
          rps_limit == o.rps_limit &&
          window_size == o.window_size &&
          client_key == o.client_key &&
          penalty_box_duration == o.penalty_box_duration &&
          action == o.action &&
          response == o.response &&
          response_object_name == o.response_object_name &&
          logger_type == o.logger_type &&
          feature_revision == o.feature_revision &&
          service_id == o.service_id &&
          version == o.version &&
          created_at == o.created_at &&
          deleted_at == o.deleted_at &&
          updated_at == o.updated_at &&
          id == o.id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, uri_dictionary_name, http_methods, rps_limit, window_size, client_key, penalty_box_duration, action, response, response_object_name, logger_type, feature_revision, service_id, version, created_at, deleted_at, updated_at, id].hash
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
