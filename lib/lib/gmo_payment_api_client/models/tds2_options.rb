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
  # 3Dセキュアオプション情報
  class Tds2Options
    # 未対応カードの認証スキップ お使いのカードが3Dセキュア2.0未対応の場合に認証をスキップするか、エラーにするかを選択します。   認証をスキップしたオーソリ(信用照会)は可能ですが、チャージバックのリスクがあります。 
    attr_accessor :skip_not_enrolled_card

    # 認証結果Attempt時の挙動 3Dセキュア認証の結果、カード会社からECI 06(Mastercard以外)または01(Mastercard)が返された場合の処理を選択します。   ECI06/01は、カード発行会社が3Dセキュアに対応していない場合やサーバー障害などの時に、認証プロセス自体はできていませんが認証成功と扱うことを意味します。   通常、この取引が不正利用によりチャージバックとなった場合、支払いの責任はカード発行会社となり加盟店様には請求されません。   それでもECI06/01の支払いを受け付けたくない場合は、`NOT_ALLOW`を設定してください。   `FOLLOW`を設定した場合、3Dセキュア必須化の契約に従います。 - `FOLLOW`：ショップ契約の「3Dセキュア必須化」の内容に従う - `ALLOW`：認証成功と扱う - `NOT_ALLOW`：認証失敗と扱う 
    attr_accessor :allow_attempt

    # 認証チャレンジ必須   リスク判定の結果によらず3Dセキュア認証チャレンジを要求する場合に`true`を設定します。   ただし、カード発行会社が対応していない場合があります。 
    attr_accessor :requires_challenge

    # 自動オーソリ有無   3Dセキュア認証後に自動でオーソリ(信用照会)をせずに、加盟店様から明示的に3Dセキュア後APIを呼び出してオーソリを実施したい場合には`false`を設定します。   「自動オーソリあり」の場合、オーソリが実行されてもお客様がブラウザを閉じる、通信エラーが発生するなどして処理が中断し、貴社にコールバックがされず状態不整合になる可能性があります。   「自動オーソリなし」は、オーソリのリクエストを加盟店様にて制御できるため上記のリスクを低減できます。 
    attr_accessor :auto_authorization

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
        :'skip_not_enrolled_card' => :'skipNotEnrolledCard',
        :'allow_attempt' => :'allowAttempt',
        :'requires_challenge' => :'requiresChallenge',
        :'auto_authorization' => :'autoAuthorization'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'skip_not_enrolled_card' => :'Boolean',
        :'allow_attempt' => :'String',
        :'requires_challenge' => :'Boolean',
        :'auto_authorization' => :'Boolean'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `GmoPaymentApiClient::Tds2Options` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `GmoPaymentApiClient::Tds2Options`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'skip_not_enrolled_card')
        self.skip_not_enrolled_card = attributes[:'skip_not_enrolled_card']
      else
        self.skip_not_enrolled_card = false
      end

      if attributes.key?(:'allow_attempt')
        self.allow_attempt = attributes[:'allow_attempt']
      else
        self.allow_attempt = 'FOLLOW'
      end

      if attributes.key?(:'requires_challenge')
        self.requires_challenge = attributes[:'requires_challenge']
      else
        self.requires_challenge = false
      end

      if attributes.key?(:'auto_authorization')
        self.auto_authorization = attributes[:'auto_authorization']
      else
        self.auto_authorization = true
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      allow_attempt_validator = EnumAttributeValidator.new('String', ["FOLLOW", "ALLOW", "NOT_ALLOW"])
      return false unless allow_attempt_validator.valid?(@allow_attempt)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] allow_attempt Object to be assigned
    def allow_attempt=(allow_attempt)
      validator = EnumAttributeValidator.new('String', ["FOLLOW", "ALLOW", "NOT_ALLOW"])
      unless validator.valid?(allow_attempt)
        fail ArgumentError, "invalid value for \"allow_attempt\", must be one of #{validator.allowable_values}."
      end
      @allow_attempt = allow_attempt
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          skip_not_enrolled_card == o.skip_not_enrolled_card &&
          allow_attempt == o.allow_attempt &&
          requires_challenge == o.requires_challenge &&
          auto_authorization == o.auto_authorization
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [skip_not_enrolled_card, allow_attempt, requires_challenge, auto_authorization].hash
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