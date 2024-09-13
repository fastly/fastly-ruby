=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'date'
require 'time'

module Fastly
  class ServiceVersionDetail
    # Whether this is the active version or not.
    attr_accessor :active

    # A freeform descriptive note.
    attr_accessor :comment

    # Unused at this time.
    attr_accessor :deployed

    # Whether this version is locked or not. Objects can not be added or edited on locked versions.
    attr_accessor :locked

    # The number of this version.
    attr_accessor :number

    # Unused at this time.
    attr_accessor :staging

    # Unused at this time.
    attr_accessor :testing

    # Date and time in ISO 8601 format.
    attr_accessor :created_at

    # Date and time in ISO 8601 format.
    attr_accessor :deleted_at

    # Date and time in ISO 8601 format.
    attr_accessor :updated_at

    attr_accessor :service_id

    # A list of environments where the service has been deployed.
    attr_accessor :environments

    # List of backends associated to this service.
    attr_accessor :backends

    # List of cache settings associated to this service.
    attr_accessor :cache_settings

    # List of conditions associated to this service.
    attr_accessor :conditions

    # List of directors associated to this service.
    attr_accessor :directors

    # List of domains associated to this service.
    attr_accessor :domains

    # List of gzip rules associated to this service.
    attr_accessor :gzips

    # List of headers associated to this service.
    attr_accessor :headers

    # List of healthchecks associated to this service.
    attr_accessor :healthchecks

    # List of request settings for this service.
    attr_accessor :request_settings

    # List of response objects for this service.
    attr_accessor :response_objects

    attr_accessor :settings

    # List of VCL snippets for this service.
    attr_accessor :snippets

    # List of VCL files for this service.
    attr_accessor :vcls

    # A list of Wordpress rules with this service.
    attr_accessor :wordpress

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'active' => :'active',
        :'comment' => :'comment',
        :'deployed' => :'deployed',
        :'locked' => :'locked',
        :'number' => :'number',
        :'staging' => :'staging',
        :'testing' => :'testing',
        :'created_at' => :'created_at',
        :'deleted_at' => :'deleted_at',
        :'updated_at' => :'updated_at',
        :'service_id' => :'service_id',
        :'environments' => :'environments',
        :'backends' => :'backends',
        :'cache_settings' => :'cache_settings',
        :'conditions' => :'conditions',
        :'directors' => :'directors',
        :'domains' => :'domains',
        :'gzips' => :'gzips',
        :'headers' => :'headers',
        :'healthchecks' => :'healthchecks',
        :'request_settings' => :'request_settings',
        :'response_objects' => :'response_objects',
        :'settings' => :'settings',
        :'snippets' => :'snippets',
        :'vcls' => :'vcls',
        :'wordpress' => :'wordpress'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.fastly_types
      {
        :'active' => :'Boolean',
        :'comment' => :'String',
        :'deployed' => :'Boolean',
        :'locked' => :'Boolean',
        :'number' => :'Integer',
        :'staging' => :'Boolean',
        :'testing' => :'Boolean',
        :'created_at' => :'Time',
        :'deleted_at' => :'Time',
        :'updated_at' => :'Time',
        :'service_id' => :'String',
        :'environments' => :'Array<Environment>',
        :'backends' => :'Array<BackendResponse>',
        :'cache_settings' => :'Array<CacheSettingResponse>',
        :'conditions' => :'Array<ConditionResponse>',
        :'directors' => :'Array<Director>',
        :'domains' => :'Array<DomainResponse>',
        :'gzips' => :'Array<GzipResponse>',
        :'headers' => :'Array<HeaderResponse>',
        :'healthchecks' => :'Array<HealthcheckResponse>',
        :'request_settings' => :'Array<RequestSettingsResponse>',
        :'response_objects' => :'Array<ResponseObjectResponse>',
        :'settings' => :'VersionDetailSettings',
        :'snippets' => :'Array<SchemasSnippetResponse>',
        :'vcls' => :'Array<SchemasVclResponse>',
        :'wordpress' => :'Array<Object>'
      }
    end

    # List of attributes with nullable: true
    def self.fastly_nullable
      Set.new([
        :'comment',
        :'created_at',
        :'deleted_at',
        :'updated_at',
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.fastly_all_of
      [
      :'SchemasVersionResponse',
      :'VersionDetail'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Fastly::ServiceVersionDetail` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Fastly::ServiceVersionDetail`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'active')
        self.active = attributes[:'active']
      else
        self.active = false
      end

      if attributes.key?(:'comment')
        self.comment = attributes[:'comment']
      end

      if attributes.key?(:'deployed')
        self.deployed = attributes[:'deployed']
      end

      if attributes.key?(:'locked')
        self.locked = attributes[:'locked']
      else
        self.locked = false
      end

      if attributes.key?(:'number')
        self.number = attributes[:'number']
      end

      if attributes.key?(:'staging')
        self.staging = attributes[:'staging']
      else
        self.staging = false
      end

      if attributes.key?(:'testing')
        self.testing = attributes[:'testing']
      else
        self.testing = false
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

      if attributes.key?(:'service_id')
        self.service_id = attributes[:'service_id']
      end

      if attributes.key?(:'environments')
        if (value = attributes[:'environments']).is_a?(Array)
          self.environments = value
        end
      end

      if attributes.key?(:'backends')
        if (value = attributes[:'backends']).is_a?(Array)
          self.backends = value
        end
      end

      if attributes.key?(:'cache_settings')
        if (value = attributes[:'cache_settings']).is_a?(Array)
          self.cache_settings = value
        end
      end

      if attributes.key?(:'conditions')
        if (value = attributes[:'conditions']).is_a?(Array)
          self.conditions = value
        end
      end

      if attributes.key?(:'directors')
        if (value = attributes[:'directors']).is_a?(Array)
          self.directors = value
        end
      end

      if attributes.key?(:'domains')
        if (value = attributes[:'domains']).is_a?(Array)
          self.domains = value
        end
      end

      if attributes.key?(:'gzips')
        if (value = attributes[:'gzips']).is_a?(Array)
          self.gzips = value
        end
      end

      if attributes.key?(:'headers')
        if (value = attributes[:'headers']).is_a?(Array)
          self.headers = value
        end
      end

      if attributes.key?(:'healthchecks')
        if (value = attributes[:'healthchecks']).is_a?(Array)
          self.healthchecks = value
        end
      end

      if attributes.key?(:'request_settings')
        if (value = attributes[:'request_settings']).is_a?(Array)
          self.request_settings = value
        end
      end

      if attributes.key?(:'response_objects')
        if (value = attributes[:'response_objects']).is_a?(Array)
          self.response_objects = value
        end
      end

      if attributes.key?(:'settings')
        self.settings = attributes[:'settings']
      end

      if attributes.key?(:'snippets')
        if (value = attributes[:'snippets']).is_a?(Array)
          self.snippets = value
        end
      end

      if attributes.key?(:'vcls')
        if (value = attributes[:'vcls']).is_a?(Array)
          self.vcls = value
        end
      end

      if attributes.key?(:'wordpress')
        if (value = attributes[:'wordpress']).is_a?(Array)
          self.wordpress = value
        end
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
          active == o.active &&
          comment == o.comment &&
          deployed == o.deployed &&
          locked == o.locked &&
          number == o.number &&
          staging == o.staging &&
          testing == o.testing &&
          created_at == o.created_at &&
          deleted_at == o.deleted_at &&
          updated_at == o.updated_at &&
          service_id == o.service_id &&
          environments == o.environments &&
          backends == o.backends &&
          cache_settings == o.cache_settings &&
          conditions == o.conditions &&
          directors == o.directors &&
          domains == o.domains &&
          gzips == o.gzips &&
          headers == o.headers &&
          healthchecks == o.healthchecks &&
          request_settings == o.request_settings &&
          response_objects == o.response_objects &&
          settings == o.settings &&
          snippets == o.snippets &&
          vcls == o.vcls &&
          wordpress == o.wordpress
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [active, comment, deployed, locked, number, staging, testing, created_at, deleted_at, updated_at, service_id, environments, backends, cache_settings, conditions, directors, domains, gzips, headers, healthchecks, request_settings, response_objects, settings, snippets, vcls, wordpress].hash
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
