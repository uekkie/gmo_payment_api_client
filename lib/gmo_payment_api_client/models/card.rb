=begin
#PGマルチペイメントサービス OpenAPIタイプ

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.3.1

Generated by: https://openapi-generator.tech
Generator version: 7.6.0

=end

require 'date'
require 'time'

module GmoPaymentApiClient
  # カード情報
  class Card
    # カード番号<br>ハイフンは含めないでください。
    attr_accessor :card_number

    # カード名義人
    attr_accessor :cardholder_name

    # カード有効期限(月)
    attr_accessor :expiry_month

    # カード有効期限(年)
    attr_accessor :expiry_year

    # セキュリティコード<br>CVCやCVVとも呼ばれます。
    attr_accessor :security_code

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'card_number' => :'cardNumber',
        :'cardholder_name' => :'cardholderName',
        :'expiry_month' => :'expiryMonth',
        :'expiry_year' => :'expiryYear',
        :'security_code' => :'securityCode'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'card_number' => :'String',
        :'cardholder_name' => :'String',
        :'expiry_month' => :'String',
        :'expiry_year' => :'String',
        :'security_code' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `GmoPaymentApiClient::Card` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `GmoPaymentApiClient::Card`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'card_number')
        self.card_number = attributes[:'card_number']
      else
        self.card_number = nil
      end

      if attributes.key?(:'cardholder_name')
        self.cardholder_name = attributes[:'cardholder_name']
      end

      if attributes.key?(:'expiry_month')
        self.expiry_month = attributes[:'expiry_month']
      else
        self.expiry_month = nil
      end

      if attributes.key?(:'expiry_year')
        self.expiry_year = attributes[:'expiry_year']
      else
        self.expiry_year = nil
      end

      if attributes.key?(:'security_code')
        self.security_code = attributes[:'security_code']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @card_number.nil?
        invalid_properties.push('invalid value for "card_number", card_number cannot be nil.')
      end

      pattern = Regexp.new(/^[0-9]{12,16}$/)
      if @card_number !~ pattern
        invalid_properties.push("invalid value for \"card_number\", must conform to the pattern #{pattern}.")
      end

      pattern = Regexp.new(/^[a-zA-Z0-9 -]+$/)
      if !@cardholder_name.nil? && @cardholder_name !~ pattern
        invalid_properties.push("invalid value for \"cardholder_name\", must conform to the pattern #{pattern}.")
      end

      if @expiry_month.nil?
        invalid_properties.push('invalid value for "expiry_month", expiry_month cannot be nil.')
      end

      pattern = Regexp.new(/^[0-9]{2}$/)
      if @expiry_month !~ pattern
        invalid_properties.push("invalid value for \"expiry_month\", must conform to the pattern #{pattern}.")
      end

      if @expiry_year.nil?
        invalid_properties.push('invalid value for "expiry_year", expiry_year cannot be nil.')
      end

      pattern = Regexp.new(/^[0-9]{4}$/)
      if @expiry_year !~ pattern
        invalid_properties.push("invalid value for \"expiry_year\", must conform to the pattern #{pattern}.")
      end

      pattern = Regexp.new(/^[0-9]{3,4}$/)
      if !@security_code.nil? && @security_code !~ pattern
        invalid_properties.push("invalid value for \"security_code\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @card_number.nil?
      return false if @card_number !~ Regexp.new(/^[0-9]{12,16}$/)
      return false if !@cardholder_name.nil? && @cardholder_name !~ Regexp.new(/^[a-zA-Z0-9 -]+$/)
      return false if @expiry_month.nil?
      return false if @expiry_month !~ Regexp.new(/^[0-9]{2}$/)
      return false if @expiry_year.nil?
      return false if @expiry_year !~ Regexp.new(/^[0-9]{4}$/)
      return false if !@security_code.nil? && @security_code !~ Regexp.new(/^[0-9]{3,4}$/)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] card_number Value to be assigned
    def card_number=(card_number)
      if card_number.nil?
        fail ArgumentError, 'card_number cannot be nil'
      end

      pattern = Regexp.new(/^[0-9]{12,16}$/)
      if card_number !~ pattern
        fail ArgumentError, "invalid value for \"card_number\", must conform to the pattern #{pattern}."
      end

      @card_number = card_number
    end

    # Custom attribute writer method with validation
    # @param [Object] cardholder_name Value to be assigned
    def cardholder_name=(cardholder_name)
      if cardholder_name.nil?
        fail ArgumentError, 'cardholder_name cannot be nil'
      end

      pattern = Regexp.new(/^[a-zA-Z0-9 -]+$/)
      if cardholder_name !~ pattern
        fail ArgumentError, "invalid value for \"cardholder_name\", must conform to the pattern #{pattern}."
      end

      @cardholder_name = cardholder_name
    end

    # Custom attribute writer method with validation
    # @param [Object] expiry_month Value to be assigned
    def expiry_month=(expiry_month)
      if expiry_month.nil?
        fail ArgumentError, 'expiry_month cannot be nil'
      end

      pattern = Regexp.new(/^[0-9]{2}$/)
      if expiry_month !~ pattern
        fail ArgumentError, "invalid value for \"expiry_month\", must conform to the pattern #{pattern}."
      end

      @expiry_month = expiry_month
    end

    # Custom attribute writer method with validation
    # @param [Object] expiry_year Value to be assigned
    def expiry_year=(expiry_year)
      if expiry_year.nil?
        fail ArgumentError, 'expiry_year cannot be nil'
      end

      pattern = Regexp.new(/^[0-9]{4}$/)
      if expiry_year !~ pattern
        fail ArgumentError, "invalid value for \"expiry_year\", must conform to the pattern #{pattern}."
      end

      @expiry_year = expiry_year
    end

    # Custom attribute writer method with validation
    # @param [Object] security_code Value to be assigned
    def security_code=(security_code)
      if security_code.nil?
        fail ArgumentError, 'security_code cannot be nil'
      end

      pattern = Regexp.new(/^[0-9]{3,4}$/)
      if security_code !~ pattern
        fail ArgumentError, "invalid value for \"security_code\", must conform to the pattern #{pattern}."
      end

      @security_code = security_code
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          card_number == o.card_number &&
          cardholder_name == o.cardholder_name &&
          expiry_month == o.expiry_month &&
          expiry_year == o.expiry_year &&
          security_code == o.security_code
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [card_number, cardholder_name, expiry_month, expiry_year, security_code].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
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
        klass = GmoPaymentApiClient.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
          is_nullable = self.class.openapi_nullable.include?(attr)
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
