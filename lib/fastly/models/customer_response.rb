=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'date'
require 'time'

module Fastly
  class CustomerResponse
    # The alphanumeric string representing the primary billing contact.
    attr_accessor :billing_contact_id

    # Customer's current network revenue type.
    attr_accessor :billing_network_type

    # Used for adding purchased orders to customer's account.
    attr_accessor :billing_ref

    # Whether this customer can view or edit wordpress.
    attr_accessor :can_configure_wordpress

    # Whether this customer can reset passwords.
    attr_accessor :can_reset_passwords

    # Whether this customer can upload VCL.
    attr_accessor :can_upload_vcl

    # Specifies whether 2FA is forced or not forced on the customer account. Logs out non-2FA users once 2FA is force enabled.
    attr_accessor :force_2fa

    # Specifies whether SSO is forced or not forced on the customer account.
    attr_accessor :force_sso

    # Specifies whether the account has access or does not have access to the account panel.
    attr_accessor :has_account_panel

    # Specifies whether the account has access or does not have access to the improved events.
    attr_accessor :has_improved_events

    # Whether this customer can view or edit the SSL config.
    attr_accessor :has_improved_ssl_config

    # Specifies whether the account has enabled or not enabled openstack logging.
    attr_accessor :has_openstack_logging

    # Specifies whether the account can edit PCI for a service.
    attr_accessor :has_pci

    # Specifies whether PCI passwords are required for the account.
    attr_accessor :has_pci_passwords

    # The range of IP addresses authorized to access the customer account.
    attr_accessor :ip_whitelist

    # The alphanumeric string identifying the account's legal contact.
    attr_accessor :legal_contact_id

    # The name of the customer, generally the company name.
    attr_accessor :name

    # The alphanumeric string identifying the account owner.
    attr_accessor :owner_id

    # The phone number associated with the account.
    attr_accessor :phone_number

    # The postal address associated with the account.
    attr_accessor :postal_address

    # The pricing plan this customer is under.
    attr_accessor :pricing_plan

    # The alphanumeric string identifying the pricing plan.
    attr_accessor :pricing_plan_id

    # The alphanumeric string identifying the account's security contact.
    attr_accessor :security_contact_id

    # The alphanumeric string identifying the account's technical contact.
    attr_accessor :technical_contact_id

    # Date and time in ISO 8601 format.
    attr_accessor :created_at

    # Date and time in ISO 8601 format.
    attr_accessor :deleted_at

    # Date and time in ISO 8601 format.
    attr_accessor :updated_at

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
        :'billing_contact_id' => :'billing_contact_id',
        :'billing_network_type' => :'billing_network_type',
        :'billing_ref' => :'billing_ref',
        :'can_configure_wordpress' => :'can_configure_wordpress',
        :'can_reset_passwords' => :'can_reset_passwords',
        :'can_upload_vcl' => :'can_upload_vcl',
        :'force_2fa' => :'force_2fa',
        :'force_sso' => :'force_sso',
        :'has_account_panel' => :'has_account_panel',
        :'has_improved_events' => :'has_improved_events',
        :'has_improved_ssl_config' => :'has_improved_ssl_config',
        :'has_openstack_logging' => :'has_openstack_logging',
        :'has_pci' => :'has_pci',
        :'has_pci_passwords' => :'has_pci_passwords',
        :'ip_whitelist' => :'ip_whitelist',
        :'legal_contact_id' => :'legal_contact_id',
        :'name' => :'name',
        :'owner_id' => :'owner_id',
        :'phone_number' => :'phone_number',
        :'postal_address' => :'postal_address',
        :'pricing_plan' => :'pricing_plan',
        :'pricing_plan_id' => :'pricing_plan_id',
        :'security_contact_id' => :'security_contact_id',
        :'technical_contact_id' => :'technical_contact_id',
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
        :'billing_contact_id' => :'String',
        :'billing_network_type' => :'String',
        :'billing_ref' => :'String',
        :'can_configure_wordpress' => :'Boolean',
        :'can_reset_passwords' => :'Boolean',
        :'can_upload_vcl' => :'Boolean',
        :'force_2fa' => :'Boolean',
        :'force_sso' => :'Boolean',
        :'has_account_panel' => :'Boolean',
        :'has_improved_events' => :'Boolean',
        :'has_improved_ssl_config' => :'Boolean',
        :'has_openstack_logging' => :'Boolean',
        :'has_pci' => :'Boolean',
        :'has_pci_passwords' => :'Boolean',
        :'ip_whitelist' => :'String',
        :'legal_contact_id' => :'String',
        :'name' => :'String',
        :'owner_id' => :'String',
        :'phone_number' => :'String',
        :'postal_address' => :'String',
        :'pricing_plan' => :'String',
        :'pricing_plan_id' => :'String',
        :'security_contact_id' => :'String',
        :'technical_contact_id' => :'String',
        :'created_at' => :'Time',
        :'deleted_at' => :'Time',
        :'updated_at' => :'Time',
        :'id' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.fastly_nullable
      Set.new([
        :'billing_contact_id',
        :'billing_ref',
        :'can_configure_wordpress',
        :'legal_contact_id',
        :'postal_address',
        :'security_contact_id',
        :'technical_contact_id',
        :'created_at',
        :'deleted_at',
        :'updated_at',
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.fastly_all_of
      [
      :'Customer',
      :'CustomerResponseAllOf',
      :'Timestamps'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Fastly::CustomerResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Fastly::CustomerResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'billing_contact_id')
        self.billing_contact_id = attributes[:'billing_contact_id']
      end

      if attributes.key?(:'billing_network_type')
        self.billing_network_type = attributes[:'billing_network_type']
      end

      if attributes.key?(:'billing_ref')
        self.billing_ref = attributes[:'billing_ref']
      end

      if attributes.key?(:'can_configure_wordpress')
        self.can_configure_wordpress = attributes[:'can_configure_wordpress']
      end

      if attributes.key?(:'can_reset_passwords')
        self.can_reset_passwords = attributes[:'can_reset_passwords']
      end

      if attributes.key?(:'can_upload_vcl')
        self.can_upload_vcl = attributes[:'can_upload_vcl']
      end

      if attributes.key?(:'force_2fa')
        self.force_2fa = attributes[:'force_2fa']
      end

      if attributes.key?(:'force_sso')
        self.force_sso = attributes[:'force_sso']
      end

      if attributes.key?(:'has_account_panel')
        self.has_account_panel = attributes[:'has_account_panel']
      end

      if attributes.key?(:'has_improved_events')
        self.has_improved_events = attributes[:'has_improved_events']
      end

      if attributes.key?(:'has_improved_ssl_config')
        self.has_improved_ssl_config = attributes[:'has_improved_ssl_config']
      end

      if attributes.key?(:'has_openstack_logging')
        self.has_openstack_logging = attributes[:'has_openstack_logging']
      end

      if attributes.key?(:'has_pci')
        self.has_pci = attributes[:'has_pci']
      end

      if attributes.key?(:'has_pci_passwords')
        self.has_pci_passwords = attributes[:'has_pci_passwords']
      end

      if attributes.key?(:'ip_whitelist')
        self.ip_whitelist = attributes[:'ip_whitelist']
      end

      if attributes.key?(:'legal_contact_id')
        self.legal_contact_id = attributes[:'legal_contact_id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'owner_id')
        self.owner_id = attributes[:'owner_id']
      end

      if attributes.key?(:'phone_number')
        self.phone_number = attributes[:'phone_number']
      end

      if attributes.key?(:'postal_address')
        self.postal_address = attributes[:'postal_address']
      end

      if attributes.key?(:'pricing_plan')
        self.pricing_plan = attributes[:'pricing_plan']
      end

      if attributes.key?(:'pricing_plan_id')
        self.pricing_plan_id = attributes[:'pricing_plan_id']
      end

      if attributes.key?(:'security_contact_id')
        self.security_contact_id = attributes[:'security_contact_id']
      end

      if attributes.key?(:'technical_contact_id')
        self.technical_contact_id = attributes[:'technical_contact_id']
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
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      billing_network_type_validator = EnumAttributeValidator.new('String', ["public", "private"])
      return false unless billing_network_type_validator.valid?(@billing_network_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] billing_network_type Object to be assigned
    def billing_network_type=(billing_network_type)
      validator = EnumAttributeValidator.new('String', ["public", "private"])
      unless validator.valid?(billing_network_type)
        fail ArgumentError, "invalid value for \"billing_network_type\", must be one of #{validator.allowable_values}."
      end
      @billing_network_type = billing_network_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          billing_contact_id == o.billing_contact_id &&
          billing_network_type == o.billing_network_type &&
          billing_ref == o.billing_ref &&
          can_configure_wordpress == o.can_configure_wordpress &&
          can_reset_passwords == o.can_reset_passwords &&
          can_upload_vcl == o.can_upload_vcl &&
          force_2fa == o.force_2fa &&
          force_sso == o.force_sso &&
          has_account_panel == o.has_account_panel &&
          has_improved_events == o.has_improved_events &&
          has_improved_ssl_config == o.has_improved_ssl_config &&
          has_openstack_logging == o.has_openstack_logging &&
          has_pci == o.has_pci &&
          has_pci_passwords == o.has_pci_passwords &&
          ip_whitelist == o.ip_whitelist &&
          legal_contact_id == o.legal_contact_id &&
          name == o.name &&
          owner_id == o.owner_id &&
          phone_number == o.phone_number &&
          postal_address == o.postal_address &&
          pricing_plan == o.pricing_plan &&
          pricing_plan_id == o.pricing_plan_id &&
          security_contact_id == o.security_contact_id &&
          technical_contact_id == o.technical_contact_id &&
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
      [billing_contact_id, billing_network_type, billing_ref, can_configure_wordpress, can_reset_passwords, can_upload_vcl, force_2fa, force_sso, has_account_panel, has_improved_events, has_improved_ssl_config, has_openstack_logging, has_pci, has_pci_passwords, ip_whitelist, legal_contact_id, name, owner_id, phone_number, postal_address, pricing_plan, pricing_plan_id, security_contact_id, technical_contact_id, created_at, deleted_at, updated_at, id].hash
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
