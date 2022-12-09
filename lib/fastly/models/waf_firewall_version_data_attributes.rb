=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'date'
require 'time'

module Fastly
  class WafFirewallVersionDataAttributes
    # Allowed HTTP versions.
    attr_accessor :allowed_http_versions

    # A space-separated list of HTTP method names.
    attr_accessor :allowed_methods

    # Allowed request content types.
    attr_accessor :allowed_request_content_type

    # Allowed request content type charset.
    attr_accessor :allowed_request_content_type_charset

    # The maximum allowed argument name length.
    attr_accessor :arg_name_length

    # The maximum allowed length of an argument.
    attr_accessor :arg_length

    # The maximum allowed size of all files (in bytes).
    attr_accessor :combined_file_sizes

    # A freeform descriptive note.
    attr_accessor :comment

    # Score value to add for critical anomalies.
    attr_accessor :critical_anomaly_score

    # CRS validate UTF8 encoding.
    attr_accessor :crs_validate_utf8_encoding

    # Score value to add for error anomalies.
    attr_accessor :error_anomaly_score

    # A space-separated list of country codes in ISO 3166-1 (two-letter) format.
    attr_accessor :high_risk_country_codes

    # HTTP violation threshold.
    attr_accessor :http_violation_score_threshold

    # Inbound anomaly threshold.
    attr_accessor :inbound_anomaly_score_threshold

    # Local file inclusion attack threshold.
    attr_accessor :lfi_score_threshold

    # Whether a specific firewall version is locked from being modified.
    attr_accessor :locked

    # The maximum allowed file size, in bytes.
    attr_accessor :max_file_size

    # The maximum number of arguments allowed.
    attr_accessor :max_num_args

    # Score value to add for notice anomalies.
    attr_accessor :notice_anomaly_score

    attr_accessor :number

    # The configured paranoia level.
    attr_accessor :paranoia_level

    # PHP injection threshold.
    attr_accessor :php_injection_score_threshold

    # Remote code execution threshold.
    attr_accessor :rce_score_threshold

    # A space-separated list of allowed file extensions.
    attr_accessor :restricted_extensions

    # A space-separated list of allowed header names.
    attr_accessor :restricted_headers

    # Remote file inclusion attack threshold.
    attr_accessor :rfi_score_threshold

    # Session fixation attack threshold.
    attr_accessor :session_fixation_score_threshold

    # SQL injection attack threshold.
    attr_accessor :sql_injection_score_threshold

    # The maximum size of argument names and values.
    attr_accessor :total_arg_length

    # Score value to add for warning anomalies.
    attr_accessor :warning_anomaly_score

    # XSS attack threshold.
    attr_accessor :xss_score_threshold

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'allowed_http_versions' => :'allowed_http_versions',
        :'allowed_methods' => :'allowed_methods',
        :'allowed_request_content_type' => :'allowed_request_content_type',
        :'allowed_request_content_type_charset' => :'allowed_request_content_type_charset',
        :'arg_name_length' => :'arg_name_length',
        :'arg_length' => :'arg_length',
        :'combined_file_sizes' => :'combined_file_sizes',
        :'comment' => :'comment',
        :'critical_anomaly_score' => :'critical_anomaly_score',
        :'crs_validate_utf8_encoding' => :'crs_validate_utf8_encoding',
        :'error_anomaly_score' => :'error_anomaly_score',
        :'high_risk_country_codes' => :'high_risk_country_codes',
        :'http_violation_score_threshold' => :'http_violation_score_threshold',
        :'inbound_anomaly_score_threshold' => :'inbound_anomaly_score_threshold',
        :'lfi_score_threshold' => :'lfi_score_threshold',
        :'locked' => :'locked',
        :'max_file_size' => :'max_file_size',
        :'max_num_args' => :'max_num_args',
        :'notice_anomaly_score' => :'notice_anomaly_score',
        :'number' => :'number',
        :'paranoia_level' => :'paranoia_level',
        :'php_injection_score_threshold' => :'php_injection_score_threshold',
        :'rce_score_threshold' => :'rce_score_threshold',
        :'restricted_extensions' => :'restricted_extensions',
        :'restricted_headers' => :'restricted_headers',
        :'rfi_score_threshold' => :'rfi_score_threshold',
        :'session_fixation_score_threshold' => :'session_fixation_score_threshold',
        :'sql_injection_score_threshold' => :'sql_injection_score_threshold',
        :'total_arg_length' => :'total_arg_length',
        :'warning_anomaly_score' => :'warning_anomaly_score',
        :'xss_score_threshold' => :'xss_score_threshold'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.fastly_types
      {
        :'allowed_http_versions' => :'String',
        :'allowed_methods' => :'String',
        :'allowed_request_content_type' => :'String',
        :'allowed_request_content_type_charset' => :'String',
        :'arg_name_length' => :'Integer',
        :'arg_length' => :'Integer',
        :'combined_file_sizes' => :'Integer',
        :'comment' => :'String',
        :'critical_anomaly_score' => :'Integer',
        :'crs_validate_utf8_encoding' => :'Boolean',
        :'error_anomaly_score' => :'Integer',
        :'high_risk_country_codes' => :'String',
        :'http_violation_score_threshold' => :'Integer',
        :'inbound_anomaly_score_threshold' => :'Integer',
        :'lfi_score_threshold' => :'Integer',
        :'locked' => :'Boolean',
        :'max_file_size' => :'Integer',
        :'max_num_args' => :'Integer',
        :'notice_anomaly_score' => :'Integer',
        :'number' => :'Integer',
        :'paranoia_level' => :'Integer',
        :'php_injection_score_threshold' => :'Integer',
        :'rce_score_threshold' => :'Integer',
        :'restricted_extensions' => :'String',
        :'restricted_headers' => :'String',
        :'rfi_score_threshold' => :'Integer',
        :'session_fixation_score_threshold' => :'Integer',
        :'sql_injection_score_threshold' => :'Integer',
        :'total_arg_length' => :'Integer',
        :'warning_anomaly_score' => :'Integer',
        :'xss_score_threshold' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.fastly_nullable
      Set.new([
        :'comment',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Fastly::WafFirewallVersionDataAttributes` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Fastly::WafFirewallVersionDataAttributes`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'allowed_http_versions')
        self.allowed_http_versions = attributes[:'allowed_http_versions']
      else
        self.allowed_http_versions = 'HTTP/1.0 HTTP/1.1 HTTP/2'
      end

      if attributes.key?(:'allowed_methods')
        self.allowed_methods = attributes[:'allowed_methods']
      else
        self.allowed_methods = 'GET HEAD POST OPTIONS PUT PATCH DELETE'
      end

      if attributes.key?(:'allowed_request_content_type')
        self.allowed_request_content_type = attributes[:'allowed_request_content_type']
      else
        self.allowed_request_content_type = 'application/x-www-form-urlencoded|multipart/form-data|text/xml|application/xml|application/x-amf|application/json|text/plain'
      end

      if attributes.key?(:'allowed_request_content_type_charset')
        self.allowed_request_content_type_charset = attributes[:'allowed_request_content_type_charset']
      else
        self.allowed_request_content_type_charset = 'utf-8|iso-8859-1|iso-8859-15|windows-1252'
      end

      if attributes.key?(:'arg_name_length')
        self.arg_name_length = attributes[:'arg_name_length']
      else
        self.arg_name_length = 100
      end

      if attributes.key?(:'arg_length')
        self.arg_length = attributes[:'arg_length']
      else
        self.arg_length = 400
      end

      if attributes.key?(:'combined_file_sizes')
        self.combined_file_sizes = attributes[:'combined_file_sizes']
      else
        self.combined_file_sizes = 10000000
      end

      if attributes.key?(:'comment')
        self.comment = attributes[:'comment']
      end

      if attributes.key?(:'critical_anomaly_score')
        self.critical_anomaly_score = attributes[:'critical_anomaly_score']
      else
        self.critical_anomaly_score = 6
      end

      if attributes.key?(:'crs_validate_utf8_encoding')
        self.crs_validate_utf8_encoding = attributes[:'crs_validate_utf8_encoding']
      end

      if attributes.key?(:'error_anomaly_score')
        self.error_anomaly_score = attributes[:'error_anomaly_score']
      else
        self.error_anomaly_score = 5
      end

      if attributes.key?(:'high_risk_country_codes')
        self.high_risk_country_codes = attributes[:'high_risk_country_codes']
      end

      if attributes.key?(:'http_violation_score_threshold')
        self.http_violation_score_threshold = attributes[:'http_violation_score_threshold']
      end

      if attributes.key?(:'inbound_anomaly_score_threshold')
        self.inbound_anomaly_score_threshold = attributes[:'inbound_anomaly_score_threshold']
      end

      if attributes.key?(:'lfi_score_threshold')
        self.lfi_score_threshold = attributes[:'lfi_score_threshold']
      end

      if attributes.key?(:'locked')
        self.locked = attributes[:'locked']
      else
        self.locked = false
      end

      if attributes.key?(:'max_file_size')
        self.max_file_size = attributes[:'max_file_size']
      else
        self.max_file_size = 10000000
      end

      if attributes.key?(:'max_num_args')
        self.max_num_args = attributes[:'max_num_args']
      else
        self.max_num_args = 255
      end

      if attributes.key?(:'notice_anomaly_score')
        self.notice_anomaly_score = attributes[:'notice_anomaly_score']
      else
        self.notice_anomaly_score = 4
      end

      if attributes.key?(:'number')
        self.number = attributes[:'number']
      end

      if attributes.key?(:'paranoia_level')
        self.paranoia_level = attributes[:'paranoia_level']
      else
        self.paranoia_level = 1
      end

      if attributes.key?(:'php_injection_score_threshold')
        self.php_injection_score_threshold = attributes[:'php_injection_score_threshold']
      end

      if attributes.key?(:'rce_score_threshold')
        self.rce_score_threshold = attributes[:'rce_score_threshold']
      end

      if attributes.key?(:'restricted_extensions')
        self.restricted_extensions = attributes[:'restricted_extensions']
      else
        self.restricted_extensions = '.asa/ .asax/ .ascx/ .axd/ .backup/ .bak/ .bat/ .cdx/ .cer/ .cfg/ .cmd/ .com/ .config/ .conf/ .cs/ .csproj/ .csr/ .dat/ .db/ .dbf/ .dll/ .dos/ .htr/ .htw/ .ida/ .idc/ .idq/ .inc/ .ini/ .key/ .licx/ .lnk/ .log/ .mdb/ .old/ .pass/ .pdb/ .pol/ .printer/ .pwd/ .resources/ .resx/ .sql/ .sys/ .vb/ .vbs/ .vbproj/ .vsdisco/ .webinfo/ .xsd/ .xsx'
      end

      if attributes.key?(:'restricted_headers')
        self.restricted_headers = attributes[:'restricted_headers']
      else
        self.restricted_headers = '/proxy/ /lock-token/ /content-range/ /translate/ /if/'
      end

      if attributes.key?(:'rfi_score_threshold')
        self.rfi_score_threshold = attributes[:'rfi_score_threshold']
      end

      if attributes.key?(:'session_fixation_score_threshold')
        self.session_fixation_score_threshold = attributes[:'session_fixation_score_threshold']
      end

      if attributes.key?(:'sql_injection_score_threshold')
        self.sql_injection_score_threshold = attributes[:'sql_injection_score_threshold']
      end

      if attributes.key?(:'total_arg_length')
        self.total_arg_length = attributes[:'total_arg_length']
      else
        self.total_arg_length = 6400
      end

      if attributes.key?(:'warning_anomaly_score')
        self.warning_anomaly_score = attributes[:'warning_anomaly_score']
      end

      if attributes.key?(:'xss_score_threshold')
        self.xss_score_threshold = attributes[:'xss_score_threshold']
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
          allowed_http_versions == o.allowed_http_versions &&
          allowed_methods == o.allowed_methods &&
          allowed_request_content_type == o.allowed_request_content_type &&
          allowed_request_content_type_charset == o.allowed_request_content_type_charset &&
          arg_name_length == o.arg_name_length &&
          arg_length == o.arg_length &&
          combined_file_sizes == o.combined_file_sizes &&
          comment == o.comment &&
          critical_anomaly_score == o.critical_anomaly_score &&
          crs_validate_utf8_encoding == o.crs_validate_utf8_encoding &&
          error_anomaly_score == o.error_anomaly_score &&
          high_risk_country_codes == o.high_risk_country_codes &&
          http_violation_score_threshold == o.http_violation_score_threshold &&
          inbound_anomaly_score_threshold == o.inbound_anomaly_score_threshold &&
          lfi_score_threshold == o.lfi_score_threshold &&
          locked == o.locked &&
          max_file_size == o.max_file_size &&
          max_num_args == o.max_num_args &&
          notice_anomaly_score == o.notice_anomaly_score &&
          number == o.number &&
          paranoia_level == o.paranoia_level &&
          php_injection_score_threshold == o.php_injection_score_threshold &&
          rce_score_threshold == o.rce_score_threshold &&
          restricted_extensions == o.restricted_extensions &&
          restricted_headers == o.restricted_headers &&
          rfi_score_threshold == o.rfi_score_threshold &&
          session_fixation_score_threshold == o.session_fixation_score_threshold &&
          sql_injection_score_threshold == o.sql_injection_score_threshold &&
          total_arg_length == o.total_arg_length &&
          warning_anomaly_score == o.warning_anomaly_score &&
          xss_score_threshold == o.xss_score_threshold
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [allowed_http_versions, allowed_methods, allowed_request_content_type, allowed_request_content_type_charset, arg_name_length, arg_length, combined_file_sizes, comment, critical_anomaly_score, crs_validate_utf8_encoding, error_anomaly_score, high_risk_country_codes, http_violation_score_threshold, inbound_anomaly_score_threshold, lfi_score_threshold, locked, max_file_size, max_num_args, notice_anomaly_score, number, paranoia_level, php_injection_score_threshold, rce_score_threshold, restricted_extensions, restricted_headers, rfi_score_threshold, session_fixation_score_threshold, sql_injection_score_threshold, total_arg_length, warning_anomaly_score, xss_score_threshold].hash
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
