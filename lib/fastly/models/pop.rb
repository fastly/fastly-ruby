=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'date'
require 'time'

module Fastly
  class Pop
    # the three-letter code for the [POP](https://www.fastly.com/documentation/learning/concepts/pop/)
    attr_accessor :code

    # the name of the POP
    attr_accessor :name

    attr_accessor :group

    attr_accessor :region

    # the region used for stats reporting
    attr_accessor :stats_region

    # the region used for billing
    attr_accessor :billing_region

    attr_accessor :coordinates

    # the name of the [shield code](https://www.fastly.com/documentation/learning/concepts/shielding/#choosing-a-shield-location) if this POP is suitable for shielding
    attr_accessor :shield

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
        :'code' => :'code',
        :'name' => :'name',
        :'group' => :'group',
        :'region' => :'region',
        :'stats_region' => :'stats_region',
        :'billing_region' => :'billing_region',
        :'coordinates' => :'coordinates',
        :'shield' => :'shield'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.fastly_types
      {
        :'code' => :'String',
        :'name' => :'String',
        :'group' => :'String',
        :'region' => :'String',
        :'stats_region' => :'String',
        :'billing_region' => :'String',
        :'coordinates' => :'PopCoordinates',
        :'shield' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Fastly::Pop` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Fastly::Pop`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'code')
        self.code = attributes[:'code']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'group')
        self.group = attributes[:'group']
      end

      if attributes.key?(:'region')
        self.region = attributes[:'region']
      end

      if attributes.key?(:'stats_region')
        self.stats_region = attributes[:'stats_region']
      end

      if attributes.key?(:'billing_region')
        self.billing_region = attributes[:'billing_region']
      end

      if attributes.key?(:'coordinates')
        self.coordinates = attributes[:'coordinates']
      end

      if attributes.key?(:'shield')
        self.shield = attributes[:'shield']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @code.nil?
        invalid_properties.push('invalid value for "code", code cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @group.nil?
        invalid_properties.push('invalid value for "group", group cannot be nil.')
      end

      if @region.nil?
        invalid_properties.push('invalid value for "region", region cannot be nil.')
      end

      if @stats_region.nil?
        invalid_properties.push('invalid value for "stats_region", stats_region cannot be nil.')
      end

      if @billing_region.nil?
        invalid_properties.push('invalid value for "billing_region", billing_region cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @code.nil?
      return false if @name.nil?
      return false if @group.nil?
      return false if @region.nil?
      region_validator = EnumAttributeValidator.new('String', ["APAC", "Asia", "AF-West", "EU-Central", "EU-East", "EU-West", "MX-North", "MX-Central", "MX-South", "Middle-East", "North-America", "SA-South", "SA-East", "SA-West", "SA-North", "South-Africa", "South-America", "US-Central", "US-East", "US-West", "Asia-South"])
      return false unless region_validator.valid?(@region)
      return false if @stats_region.nil?
      stats_region_validator = EnumAttributeValidator.new('String', ["southamerica_std", "africa_std", "anzac", "asia", "europe", "usa", "asia_india", "asia_southkorea", "mexico"])
      return false unless stats_region_validator.valid?(@stats_region)
      return false if @billing_region.nil?
      billing_region_validator = EnumAttributeValidator.new('String', ["Africa", "Australia", "Asia", "Europe", "India", "Mexico", "North America", "South Korea", "South America"])
      return false unless billing_region_validator.valid?(@billing_region)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] region Object to be assigned
    def region=(region)
      validator = EnumAttributeValidator.new('String', ["APAC", "Asia", "AF-West", "EU-Central", "EU-East", "EU-West", "MX-North", "MX-Central", "MX-South", "Middle-East", "North-America", "SA-South", "SA-East", "SA-West", "SA-North", "South-Africa", "South-America", "US-Central", "US-East", "US-West", "Asia-South"])
      unless validator.valid?(region)
        fail ArgumentError, "invalid value for \"region\", must be one of #{validator.allowable_values}."
      end
      @region = region
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] stats_region Object to be assigned
    def stats_region=(stats_region)
      validator = EnumAttributeValidator.new('String', ["southamerica_std", "africa_std", "anzac", "asia", "europe", "usa", "asia_india", "asia_southkorea", "mexico"])
      unless validator.valid?(stats_region)
        fail ArgumentError, "invalid value for \"stats_region\", must be one of #{validator.allowable_values}."
      end
      @stats_region = stats_region
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] billing_region Object to be assigned
    def billing_region=(billing_region)
      validator = EnumAttributeValidator.new('String', ["Africa", "Australia", "Asia", "Europe", "India", "Mexico", "North America", "South Korea", "South America"])
      unless validator.valid?(billing_region)
        fail ArgumentError, "invalid value for \"billing_region\", must be one of #{validator.allowable_values}."
      end
      @billing_region = billing_region
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          code == o.code &&
          name == o.name &&
          group == o.group &&
          region == o.region &&
          stats_region == o.stats_region &&
          billing_region == o.billing_region &&
          coordinates == o.coordinates &&
          shield == o.shield
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [code, name, group, region, stats_region, billing_region, coordinates, shield].hash
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
