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
  # クレカ払いオプション情報
  class CreditChargeOptions
    # 支払い要求のタイプ   - `AUTH`：仮売上 - `CAPTURE`：即時売上 
    attr_accessor :authorization_mode

    # 3Dセキュア認証の利用有無   Apple Payは利用できません。 
    attr_accessor :use_tds2

    # 不正検知の利用有無   Apple Payは利用できません。 
    attr_accessor :use_fraud_detection

    # 商品番号   加盟店様とカード会社との契約で定められた場合のみ設定します。   省略時はデフォルトで「0000990」が設定されます。 
    attr_accessor :item_code

    # 支払方法   Apple Payは一括払い固定になります。   - `ONE_TIME`：一括 - `INSTALLMENT`：分割 - `BONUS_ONE_TIME`：ボーナス一括 - `REVOLVING`：リボ 
    attr_accessor :payment_method

    # 分割回数   支払方法が分割の場合に設定します。   設定可能な分割回数は契約により異なります。 
    attr_accessor :installments

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
        :'authorization_mode' => :'authorizationMode',
        :'use_tds2' => :'useTds2',
        :'use_fraud_detection' => :'useFraudDetection',
        :'item_code' => :'itemCode',
        :'payment_method' => :'paymentMethod',
        :'installments' => :'installments'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'authorization_mode' => :'String',
        :'use_tds2' => :'Boolean',
        :'use_fraud_detection' => :'Boolean',
        :'item_code' => :'String',
        :'payment_method' => :'String',
        :'installments' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `GmoPaymentApiClient::CreditChargeOptions` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `GmoPaymentApiClient::CreditChargeOptions`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'authorization_mode')
        self.authorization_mode = attributes[:'authorization_mode']
      else
        self.authorization_mode = 'AUTH'
      end

      if attributes.key?(:'use_tds2')
        self.use_tds2 = attributes[:'use_tds2']
      else
        self.use_tds2 = true
      end

      if attributes.key?(:'use_fraud_detection')
        self.use_fraud_detection = attributes[:'use_fraud_detection']
      else
        self.use_fraud_detection = false
      end

      if attributes.key?(:'item_code')
        self.item_code = attributes[:'item_code']
      else
        self.item_code = '0000990'
      end

      if attributes.key?(:'payment_method')
        self.payment_method = attributes[:'payment_method']
      else
        self.payment_method = 'ONE_TIME'
      end

      if attributes.key?(:'installments')
        self.installments = attributes[:'installments']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @authorization_mode.nil?
        invalid_properties.push('invalid value for "authorization_mode", authorization_mode cannot be nil.')
      end

      pattern = Regexp.new(/^0000[0-9]{3}$/)
      if !@item_code.nil? && @item_code !~ pattern
        invalid_properties.push("invalid value for \"item_code\", must conform to the pattern #{pattern}.")
      end

      pattern = Regexp.new(/^[0-9]{1,2}$/)
      if !@installments.nil? && @installments !~ pattern
        invalid_properties.push("invalid value for \"installments\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @authorization_mode.nil?
      authorization_mode_validator = EnumAttributeValidator.new('String', ["AUTH", "CAPTURE"])
      return false unless authorization_mode_validator.valid?(@authorization_mode)
      return false if !@item_code.nil? && @item_code !~ Regexp.new(/^0000[0-9]{3}$/)
      payment_method_validator = EnumAttributeValidator.new('String', ["ONE_TIME", "INSTALLMENT", "BONUS_ONE_TIME", "REVOLVING"])
      return false unless payment_method_validator.valid?(@payment_method)
      return false if !@installments.nil? && @installments !~ Regexp.new(/^[0-9]{1,2}$/)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] authorization_mode Object to be assigned
    def authorization_mode=(authorization_mode)
      validator = EnumAttributeValidator.new('String', ["AUTH", "CAPTURE"])
      unless validator.valid?(authorization_mode)
        fail ArgumentError, "invalid value for \"authorization_mode\", must be one of #{validator.allowable_values}."
      end
      @authorization_mode = authorization_mode
    end

    # Custom attribute writer method with validation
    # @param [Object] item_code Value to be assigned
    def item_code=(item_code)
      if item_code.nil?
        fail ArgumentError, 'item_code cannot be nil'
      end

      pattern = Regexp.new(/^0000[0-9]{3}$/)
      if item_code !~ pattern
        fail ArgumentError, "invalid value for \"item_code\", must conform to the pattern #{pattern}."
      end

      @item_code = item_code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method Object to be assigned
    def payment_method=(payment_method)
      validator = EnumAttributeValidator.new('String', ["ONE_TIME", "INSTALLMENT", "BONUS_ONE_TIME", "REVOLVING"])
      unless validator.valid?(payment_method)
        fail ArgumentError, "invalid value for \"payment_method\", must be one of #{validator.allowable_values}."
      end
      @payment_method = payment_method
    end

    # Custom attribute writer method with validation
    # @param [Object] installments Value to be assigned
    def installments=(installments)
      if installments.nil?
        fail ArgumentError, 'installments cannot be nil'
      end

      pattern = Regexp.new(/^[0-9]{1,2}$/)
      if installments !~ pattern
        fail ArgumentError, "invalid value for \"installments\", must conform to the pattern #{pattern}."
      end

      @installments = installments
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          authorization_mode == o.authorization_mode &&
          use_tds2 == o.use_tds2 &&
          use_fraud_detection == o.use_fraud_detection &&
          item_code == o.item_code &&
          payment_method == o.payment_method &&
          installments == o.installments
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [authorization_mode, use_tds2, use_fraud_detection, item_code, payment_method, installments].hash
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
