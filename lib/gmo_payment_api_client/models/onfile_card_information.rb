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
  # 登録されたカード情報
  class OnfileCardInformation
    attr_accessor :type

    # カードのID   登録されているカードのID(物理連番)です。 
    attr_accessor :card_id

    # カードのインデックス   登録されているカードの0から4までのインデックス番号(論理連番)です。   有効な(削除されていない)カードのIDを昇順に並べた順番です。   必ず1枚しか登録しない加盟店様がカードIDを保持することなく利用することを想定しています。 
    attr_accessor :index

    # カード番号   下4桁(**********9999)固定でマスクされます。 
    attr_accessor :card_number

    # カードの有効期限(月)
    attr_accessor :expiry_month

    # カードの有効期限(年)
    attr_accessor :expiry_year

    # カードの発行カード会社コード
    attr_accessor :issuer_code

    # カードのブランド
    attr_accessor :brand

    # デフォルトカード判定   デフォルトカードの場合`true`、そうでない場合`false`です。 
    attr_accessor :is_default

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
        :'card_id' => :'cardId',
        :'index' => :'index',
        :'card_number' => :'cardNumber',
        :'expiry_month' => :'expiryMonth',
        :'expiry_year' => :'expiryYear',
        :'issuer_code' => :'issuerCode',
        :'brand' => :'brand',
        :'is_default' => :'isDefault'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'type' => :'OnfileCardType',
        :'card_id' => :'String',
        :'index' => :'String',
        :'card_number' => :'String',
        :'expiry_month' => :'String',
        :'expiry_year' => :'String',
        :'issuer_code' => :'String',
        :'brand' => :'String',
        :'is_default' => :'Boolean'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `GmoPaymentApiClient::OnfileCardInformation` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `GmoPaymentApiClient::OnfileCardInformation`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'card_id')
        self.card_id = attributes[:'card_id']
      end

      if attributes.key?(:'index')
        self.index = attributes[:'index']
      end

      if attributes.key?(:'card_number')
        self.card_number = attributes[:'card_number']
      end

      if attributes.key?(:'expiry_month')
        self.expiry_month = attributes[:'expiry_month']
      end

      if attributes.key?(:'expiry_year')
        self.expiry_year = attributes[:'expiry_year']
      end

      if attributes.key?(:'issuer_code')
        self.issuer_code = attributes[:'issuer_code']
      end

      if attributes.key?(:'brand')
        self.brand = attributes[:'brand']
      end

      if attributes.key?(:'is_default')
        self.is_default = attributes[:'is_default']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      pattern = Regexp.new(/^[0-9]{1,4}$/)
      if !@card_id.nil? && @card_id !~ pattern
        invalid_properties.push("invalid value for \"card_id\", must conform to the pattern #{pattern}.")
      end

      pattern = Regexp.new(/^[0-4]$/)
      if !@index.nil? && @index !~ pattern
        invalid_properties.push("invalid value for \"index\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@card_id.nil? && @card_id !~ Regexp.new(/^[0-9]{1,4}$/)
      return false if !@index.nil? && @index !~ Regexp.new(/^[0-4]$/)
      brand_validator = EnumAttributeValidator.new('String', ["VISA", "MASTERCARD", "JCB", "DINERS", "AMEX", "UNKNOWN"])
      return false unless brand_validator.valid?(@brand)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] card_id Value to be assigned
    def card_id=(card_id)
      if card_id.nil?
        fail ArgumentError, 'card_id cannot be nil'
      end

      pattern = Regexp.new(/^[0-9]{1,4}$/)
      if card_id !~ pattern
        fail ArgumentError, "invalid value for \"card_id\", must conform to the pattern #{pattern}."
      end

      @card_id = card_id
    end

    # Custom attribute writer method with validation
    # @param [Object] index Value to be assigned
    def index=(index)
      if index.nil?
        fail ArgumentError, 'index cannot be nil'
      end

      pattern = Regexp.new(/^[0-4]$/)
      if index !~ pattern
        fail ArgumentError, "invalid value for \"index\", must conform to the pattern #{pattern}."
      end

      @index = index
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] brand Object to be assigned
    def brand=(brand)
      validator = EnumAttributeValidator.new('String', ["VISA", "MASTERCARD", "JCB", "DINERS", "AMEX", "UNKNOWN"])
      unless validator.valid?(brand)
        fail ArgumentError, "invalid value for \"brand\", must be one of #{validator.allowable_values}."
      end
      @brand = brand
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          card_id == o.card_id &&
          index == o.index &&
          card_number == o.card_number &&
          expiry_month == o.expiry_month &&
          expiry_year == o.expiry_year &&
          issuer_code == o.issuer_code &&
          brand == o.brand &&
          is_default == o.is_default
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [type, card_id, index, card_number, expiry_month, expiry_year, issuer_code, brand, is_default].hash
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
