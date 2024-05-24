=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'date'
require 'time'

module Fastly
  class DefaultSettingsResponse
    # The type of filter to use while resizing an image.
    attr_accessor :resize_filter

    # Controls whether or not to default to WebP output when the client supports it. This is equivalent to adding \"auto=webp\" to all image optimizer requests. 
    attr_accessor :webp

    # The default quality to use with WebP output. This can be overridden with the second option in the \"quality\" URL parameter on specific image optimizer requests. 
    attr_accessor :webp_quality

    # The default type of JPEG output to use. This can be overridden with \"format=bjpeg\" and \"format=pjpeg\" on specific image optimizer requests. 
    attr_accessor :jpeg_type

    # The default quality to use with JPEG output. This can be overridden with the \"quality\" parameter on specific image optimizer requests. 
    attr_accessor :jpeg_quality

    # Whether or not we should allow output images to render at sizes larger than input. 
    attr_accessor :upscale

    # Enables GIF to MP4 transformations on this service.
    attr_accessor :allow_video

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
        :'resize_filter' => :'resize_filter',
        :'webp' => :'webp',
        :'webp_quality' => :'webp_quality',
        :'jpeg_type' => :'jpeg_type',
        :'jpeg_quality' => :'jpeg_quality',
        :'upscale' => :'upscale',
        :'allow_video' => :'allow_video'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.fastly_types
      {
        :'resize_filter' => :'String',
        :'webp' => :'Boolean',
        :'webp_quality' => :'Integer',
        :'jpeg_type' => :'String',
        :'jpeg_quality' => :'Integer',
        :'upscale' => :'Boolean',
        :'allow_video' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.fastly_nullable
      Set.new([
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.fastly_all_of
      [
      :'DefaultSettings'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Fastly::DefaultSettingsResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Fastly::DefaultSettingsResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'resize_filter')
        self.resize_filter = attributes[:'resize_filter']
      else
        self.resize_filter = 'lanczos3'
      end

      if attributes.key?(:'webp')
        self.webp = attributes[:'webp']
      else
        self.webp = false
      end

      if attributes.key?(:'webp_quality')
        self.webp_quality = attributes[:'webp_quality']
      else
        self.webp_quality = 85
      end

      if attributes.key?(:'jpeg_type')
        self.jpeg_type = attributes[:'jpeg_type']
      else
        self.jpeg_type = 'auto'
      end

      if attributes.key?(:'jpeg_quality')
        self.jpeg_quality = attributes[:'jpeg_quality']
      else
        self.jpeg_quality = 85
      end

      if attributes.key?(:'upscale')
        self.upscale = attributes[:'upscale']
      else
        self.upscale = false
      end

      if attributes.key?(:'allow_video')
        self.allow_video = attributes[:'allow_video']
      else
        self.allow_video = false
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @resize_filter.nil?
        invalid_properties.push('invalid value for "resize_filter", resize_filter cannot be nil.')
      end

      if @webp.nil?
        invalid_properties.push('invalid value for "webp", webp cannot be nil.')
      end

      if @webp_quality.nil?
        invalid_properties.push('invalid value for "webp_quality", webp_quality cannot be nil.')
      end

      if @webp_quality > 100
        invalid_properties.push('invalid value for "webp_quality", must be smaller than or equal to 100.')
      end

      if @webp_quality < 1
        invalid_properties.push('invalid value for "webp_quality", must be greater than or equal to 1.')
      end

      if @jpeg_type.nil?
        invalid_properties.push('invalid value for "jpeg_type", jpeg_type cannot be nil.')
      end

      if @jpeg_quality.nil?
        invalid_properties.push('invalid value for "jpeg_quality", jpeg_quality cannot be nil.')
      end

      if @jpeg_quality > 100
        invalid_properties.push('invalid value for "jpeg_quality", must be smaller than or equal to 100.')
      end

      if @jpeg_quality < 1
        invalid_properties.push('invalid value for "jpeg_quality", must be greater than or equal to 1.')
      end

      if @upscale.nil?
        invalid_properties.push('invalid value for "upscale", upscale cannot be nil.')
      end

      if @allow_video.nil?
        invalid_properties.push('invalid value for "allow_video", allow_video cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @resize_filter.nil?
      resize_filter_validator = EnumAttributeValidator.new('String', ["lanczos3", "lanczos2", "bicubic", "bilinear", "nearest"])
      return false unless resize_filter_validator.valid?(@resize_filter)
      return false if @webp.nil?
      return false if @webp_quality.nil?
      return false if @webp_quality > 100
      return false if @webp_quality < 1
      return false if @jpeg_type.nil?
      jpeg_type_validator = EnumAttributeValidator.new('String', ["auto", "baseline", "progressive"])
      return false unless jpeg_type_validator.valid?(@jpeg_type)
      return false if @jpeg_quality.nil?
      return false if @jpeg_quality > 100
      return false if @jpeg_quality < 1
      return false if @upscale.nil?
      return false if @allow_video.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] resize_filter Object to be assigned
    def resize_filter=(resize_filter)
      validator = EnumAttributeValidator.new('String', ["lanczos3", "lanczos2", "bicubic", "bilinear", "nearest"])
      unless validator.valid?(resize_filter)
        fail ArgumentError, "invalid value for \"resize_filter\", must be one of #{validator.allowable_values}."
      end
      @resize_filter = resize_filter
    end

    # Custom attribute writer method with validation
    # @param [Object] webp_quality Value to be assigned
    def webp_quality=(webp_quality)
      if webp_quality.nil?
        fail ArgumentError, 'webp_quality cannot be nil'
      end

      if webp_quality > 100
        fail ArgumentError, 'invalid value for "webp_quality", must be smaller than or equal to 100.'
      end

      if webp_quality < 1
        fail ArgumentError, 'invalid value for "webp_quality", must be greater than or equal to 1.'
      end

      @webp_quality = webp_quality
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] jpeg_type Object to be assigned
    def jpeg_type=(jpeg_type)
      validator = EnumAttributeValidator.new('String', ["auto", "baseline", "progressive"])
      unless validator.valid?(jpeg_type)
        fail ArgumentError, "invalid value for \"jpeg_type\", must be one of #{validator.allowable_values}."
      end
      @jpeg_type = jpeg_type
    end

    # Custom attribute writer method with validation
    # @param [Object] jpeg_quality Value to be assigned
    def jpeg_quality=(jpeg_quality)
      if jpeg_quality.nil?
        fail ArgumentError, 'jpeg_quality cannot be nil'
      end

      if jpeg_quality > 100
        fail ArgumentError, 'invalid value for "jpeg_quality", must be smaller than or equal to 100.'
      end

      if jpeg_quality < 1
        fail ArgumentError, 'invalid value for "jpeg_quality", must be greater than or equal to 1.'
      end

      @jpeg_quality = jpeg_quality
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          resize_filter == o.resize_filter &&
          webp == o.webp &&
          webp_quality == o.webp_quality &&
          jpeg_type == o.jpeg_type &&
          jpeg_quality == o.jpeg_quality &&
          upscale == o.upscale &&
          allow_video == o.allow_video
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [resize_filter, webp, webp_quality, jpeg_type, jpeg_quality, upscale, allow_video].hash
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
