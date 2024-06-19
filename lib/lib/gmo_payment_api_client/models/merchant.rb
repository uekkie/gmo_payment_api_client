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
  # 加盟店(ショップ)情報   決済手段ごとの指定要否や各パラメーターの用途は、本セクション冒頭の「共通パラメーター対応表」を参照してください。 
  class Merchant
    # 表示用の加盟店様名   設定できる最大長はUTF-8で45byteです。 
    attr_accessor :name

    # 表示用の加盟店様名(全角カナのみ)   設定できる最大長はUTF-8で60byteです。 
    attr_accessor :name_kana

    # 表示用の加盟店様名(英名) 
    attr_accessor :name_alphabet

    # 表示用の加盟店様名(略称)   設定できる最大長はUTF-8で45byteです。 
    attr_accessor :name_short

    # 加盟店様の問い合わせ先名称   設定できる最大長はUTF-8で63byteです。 
    attr_accessor :contact_name

    # 加盟店様の問い合わせ先メールアドレス   [RFC 5322](https://www.rfc-editor.org/rfc/rfc5322)の仕様に沿った形式のみ許可されます。 
    attr_accessor :contact_email

    # 加盟店様の問い合わせ先ページURL 
    attr_accessor :contact_url

    # 加盟店様の問い合わせ先電話番号 
    attr_accessor :contact_phone

    # 加盟店様の問い合わせ窓口の営業時間(HH:MM-HH:MM形式) 
    attr_accessor :contact_opening_hours

    # コールバックURL   リダイレクトが発生するリクエスト時は必ず設定してください。   リダイレクト後に加盟店様のサーバーに処理の遷移を戻すためのURLです。   詳細は[リダイレクトとコールバック](#tag/callback)を参照ください。 
    attr_accessor :callback_url

    # Webhook URL   現金払いの支払いなど、処理が非同期で行われた場合に、その結果を通知するための加盟店様側のURLです。   httpsから始まるURLを設定してください。   ※テスト環境ではhttpの指定が可能です。   詳細は[Webhook](#tag/webhook)を参照ください。 
    attr_accessor :webhook_url

    # CSRFトークン   コールバックやWebhookの呼び出し時につける任意のパラメーターです。   CSRF対策のために利用してください。   詳細は[リダイレクトとコールバック](#tag/callback)を参照ください。 
    attr_accessor :csrf_token

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'name_kana' => :'nameKana',
        :'name_alphabet' => :'nameAlphabet',
        :'name_short' => :'nameShort',
        :'contact_name' => :'contactName',
        :'contact_email' => :'contactEmail',
        :'contact_url' => :'contactUrl',
        :'contact_phone' => :'contactPhone',
        :'contact_opening_hours' => :'contactOpeningHours',
        :'callback_url' => :'callbackUrl',
        :'webhook_url' => :'webhookUrl',
        :'csrf_token' => :'csrfToken'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'name' => :'String',
        :'name_kana' => :'String',
        :'name_alphabet' => :'String',
        :'name_short' => :'String',
        :'contact_name' => :'String',
        :'contact_email' => :'String',
        :'contact_url' => :'String',
        :'contact_phone' => :'String',
        :'contact_opening_hours' => :'String',
        :'callback_url' => :'String',
        :'webhook_url' => :'String',
        :'csrf_token' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `GmoPaymentApiClient::Merchant` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `GmoPaymentApiClient::Merchant`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      else
        self.name = nil
      end

      if attributes.key?(:'name_kana')
        self.name_kana = attributes[:'name_kana']
      else
        self.name_kana = nil
      end

      if attributes.key?(:'name_alphabet')
        self.name_alphabet = attributes[:'name_alphabet']
      else
        self.name_alphabet = nil
      end

      if attributes.key?(:'name_short')
        self.name_short = attributes[:'name_short']
      else
        self.name_short = nil
      end

      if attributes.key?(:'contact_name')
        self.contact_name = attributes[:'contact_name']
      else
        self.contact_name = nil
      end

      if attributes.key?(:'contact_email')
        self.contact_email = attributes[:'contact_email']
      else
        self.contact_email = nil
      end

      if attributes.key?(:'contact_url')
        self.contact_url = attributes[:'contact_url']
      end

      if attributes.key?(:'contact_phone')
        self.contact_phone = attributes[:'contact_phone']
      else
        self.contact_phone = nil
      end

      if attributes.key?(:'contact_opening_hours')
        self.contact_opening_hours = attributes[:'contact_opening_hours']
      else
        self.contact_opening_hours = nil
      end

      if attributes.key?(:'callback_url')
        self.callback_url = attributes[:'callback_url']
      end

      if attributes.key?(:'webhook_url')
        self.webhook_url = attributes[:'webhook_url']
      end

      if attributes.key?(:'csrf_token')
        self.csrf_token = attributes[:'csrf_token']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @name.to_s.length > 30
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 30.')
      end

      if @name_kana.nil?
        invalid_properties.push('invalid value for "name_kana", name_kana cannot be nil.')
      end

      pattern = Regexp.new(/^[ァ-ヶー　]+$/)
      if @name_kana !~ pattern
        invalid_properties.push("invalid value for \"name_kana\", must conform to the pattern #{pattern}.")
      end

      if @name_alphabet.nil?
        invalid_properties.push('invalid value for "name_alphabet", name_alphabet cannot be nil.')
      end

      if @name_alphabet.to_s.length > 25
        invalid_properties.push('invalid value for "name_alphabet", the character length must be smaller than or equal to 25.')
      end

      pattern = Regexp.new(/^[a-zA-Z0-9 \x2c-\x2f]+$/)
      if @name_alphabet !~ pattern
        invalid_properties.push("invalid value for \"name_alphabet\", must conform to the pattern #{pattern}.")
      end

      if @name_short.nil?
        invalid_properties.push('invalid value for "name_short", name_short cannot be nil.')
      end

      if @name_short.to_s.length > 30
        invalid_properties.push('invalid value for "name_short", the character length must be smaller than or equal to 30.')
      end

      if @contact_name.nil?
        invalid_properties.push('invalid value for "contact_name", contact_name cannot be nil.')
      end

      if @contact_name.to_s.length > 42
        invalid_properties.push('invalid value for "contact_name", the character length must be smaller than or equal to 42.')
      end

      if @contact_email.nil?
        invalid_properties.push('invalid value for "contact_email", contact_email cannot be nil.')
      end

      if @contact_email.to_s.length > 254
        invalid_properties.push('invalid value for "contact_email", the character length must be smaller than or equal to 254.')
      end

      if !@contact_url.nil? && @contact_url.to_s.length > 256
        invalid_properties.push('invalid value for "contact_url", the character length must be smaller than or equal to 256.')
      end

      if @contact_phone.nil?
        invalid_properties.push('invalid value for "contact_phone", contact_phone cannot be nil.')
      end

      if @contact_phone.to_s.length > 13
        invalid_properties.push('invalid value for "contact_phone", the character length must be smaller than or equal to 13.')
      end

      pattern = Regexp.new(/^[0-9-]+$/)
      if @contact_phone !~ pattern
        invalid_properties.push("invalid value for \"contact_phone\", must conform to the pattern #{pattern}.")
      end

      if @contact_opening_hours.nil?
        invalid_properties.push('invalid value for "contact_opening_hours", contact_opening_hours cannot be nil.')
      end

      if @contact_opening_hours.to_s.length > 11
        invalid_properties.push('invalid value for "contact_opening_hours", the character length must be smaller than or equal to 11.')
      end

      pattern = Regexp.new(/^([0-1]?[0-9]|2[0-3]):[0-5][0-9]-([0-1]?[0-9]|2[0-3]):[0-5][0-9]$/)
      if @contact_opening_hours !~ pattern
        invalid_properties.push("invalid value for \"contact_opening_hours\", must conform to the pattern #{pattern}.")
      end

      if !@callback_url.nil? && @callback_url.to_s.length > 256
        invalid_properties.push('invalid value for "callback_url", the character length must be smaller than or equal to 256.')
      end

      if !@webhook_url.nil? && @webhook_url.to_s.length > 256
        invalid_properties.push('invalid value for "webhook_url", the character length must be smaller than or equal to 256.')
      end

      if !@csrf_token.nil? && @csrf_token.to_s.length > 36
        invalid_properties.push('invalid value for "csrf_token", the character length must be smaller than or equal to 36.')
      end

      pattern = Regexp.new(/^[-0-9a-zA-Z\-]+$/)
      if !@csrf_token.nil? && @csrf_token !~ pattern
        invalid_properties.push("invalid value for \"csrf_token\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @name.nil?
      return false if @name.to_s.length > 30
      return false if @name_kana.nil?
      return false if @name_kana !~ Regexp.new(/^[ァ-ヶー　]+$/)
      return false if @name_alphabet.nil?
      return false if @name_alphabet.to_s.length > 25
      return false if @name_alphabet !~ Regexp.new(/^[a-zA-Z0-9 \x2c-\x2f]+$/)
      return false if @name_short.nil?
      return false if @name_short.to_s.length > 30
      return false if @contact_name.nil?
      return false if @contact_name.to_s.length > 42
      return false if @contact_email.nil?
      return false if @contact_email.to_s.length > 254
      return false if !@contact_url.nil? && @contact_url.to_s.length > 256
      return false if @contact_phone.nil?
      return false if @contact_phone.to_s.length > 13
      return false if @contact_phone !~ Regexp.new(/^[0-9-]+$/)
      return false if @contact_opening_hours.nil?
      return false if @contact_opening_hours.to_s.length > 11
      return false if @contact_opening_hours !~ Regexp.new(/^([0-1]?[0-9]|2[0-3]):[0-5][0-9]-([0-1]?[0-9]|2[0-3]):[0-5][0-9]$/)
      return false if !@callback_url.nil? && @callback_url.to_s.length > 256
      return false if !@webhook_url.nil? && @webhook_url.to_s.length > 256
      return false if !@csrf_token.nil? && @csrf_token.to_s.length > 36
      return false if !@csrf_token.nil? && @csrf_token !~ Regexp.new(/^[-0-9a-zA-Z\-]+$/)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, 'name cannot be nil'
      end

      if name.to_s.length > 30
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 30.'
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] name_kana Value to be assigned
    def name_kana=(name_kana)
      if name_kana.nil?
        fail ArgumentError, 'name_kana cannot be nil'
      end

      pattern = Regexp.new(/^[ァ-ヶー　]+$/)
      if name_kana !~ pattern
        fail ArgumentError, "invalid value for \"name_kana\", must conform to the pattern #{pattern}."
      end

      @name_kana = name_kana
    end

    # Custom attribute writer method with validation
    # @param [Object] name_alphabet Value to be assigned
    def name_alphabet=(name_alphabet)
      if name_alphabet.nil?
        fail ArgumentError, 'name_alphabet cannot be nil'
      end

      if name_alphabet.to_s.length > 25
        fail ArgumentError, 'invalid value for "name_alphabet", the character length must be smaller than or equal to 25.'
      end

      pattern = Regexp.new(/^[a-zA-Z0-9 \x2c-\x2f]+$/)
      if name_alphabet !~ pattern
        fail ArgumentError, "invalid value for \"name_alphabet\", must conform to the pattern #{pattern}."
      end

      @name_alphabet = name_alphabet
    end

    # Custom attribute writer method with validation
    # @param [Object] name_short Value to be assigned
    def name_short=(name_short)
      if name_short.nil?
        fail ArgumentError, 'name_short cannot be nil'
      end

      if name_short.to_s.length > 30
        fail ArgumentError, 'invalid value for "name_short", the character length must be smaller than or equal to 30.'
      end

      @name_short = name_short
    end

    # Custom attribute writer method with validation
    # @param [Object] contact_name Value to be assigned
    def contact_name=(contact_name)
      if contact_name.nil?
        fail ArgumentError, 'contact_name cannot be nil'
      end

      if contact_name.to_s.length > 42
        fail ArgumentError, 'invalid value for "contact_name", the character length must be smaller than or equal to 42.'
      end

      @contact_name = contact_name
    end

    # Custom attribute writer method with validation
    # @param [Object] contact_email Value to be assigned
    def contact_email=(contact_email)
      if contact_email.nil?
        fail ArgumentError, 'contact_email cannot be nil'
      end

      if contact_email.to_s.length > 254
        fail ArgumentError, 'invalid value for "contact_email", the character length must be smaller than or equal to 254.'
      end

      @contact_email = contact_email
    end

    # Custom attribute writer method with validation
    # @param [Object] contact_url Value to be assigned
    def contact_url=(contact_url)
      if contact_url.nil?
        fail ArgumentError, 'contact_url cannot be nil'
      end

      if contact_url.to_s.length > 256
        fail ArgumentError, 'invalid value for "contact_url", the character length must be smaller than or equal to 256.'
      end

      @contact_url = contact_url
    end

    # Custom attribute writer method with validation
    # @param [Object] contact_phone Value to be assigned
    def contact_phone=(contact_phone)
      if contact_phone.nil?
        fail ArgumentError, 'contact_phone cannot be nil'
      end

      if contact_phone.to_s.length > 13
        fail ArgumentError, 'invalid value for "contact_phone", the character length must be smaller than or equal to 13.'
      end

      pattern = Regexp.new(/^[0-9-]+$/)
      if contact_phone !~ pattern
        fail ArgumentError, "invalid value for \"contact_phone\", must conform to the pattern #{pattern}."
      end

      @contact_phone = contact_phone
    end

    # Custom attribute writer method with validation
    # @param [Object] contact_opening_hours Value to be assigned
    def contact_opening_hours=(contact_opening_hours)
      if contact_opening_hours.nil?
        fail ArgumentError, 'contact_opening_hours cannot be nil'
      end

      if contact_opening_hours.to_s.length > 11
        fail ArgumentError, 'invalid value for "contact_opening_hours", the character length must be smaller than or equal to 11.'
      end

      pattern = Regexp.new(/^([0-1]?[0-9]|2[0-3]):[0-5][0-9]-([0-1]?[0-9]|2[0-3]):[0-5][0-9]$/)
      if contact_opening_hours !~ pattern
        fail ArgumentError, "invalid value for \"contact_opening_hours\", must conform to the pattern #{pattern}."
      end

      @contact_opening_hours = contact_opening_hours
    end

    # Custom attribute writer method with validation
    # @param [Object] callback_url Value to be assigned
    def callback_url=(callback_url)
      if callback_url.nil?
        fail ArgumentError, 'callback_url cannot be nil'
      end

      if callback_url.to_s.length > 256
        fail ArgumentError, 'invalid value for "callback_url", the character length must be smaller than or equal to 256.'
      end

      @callback_url = callback_url
    end

    # Custom attribute writer method with validation
    # @param [Object] webhook_url Value to be assigned
    def webhook_url=(webhook_url)
      if webhook_url.nil?
        fail ArgumentError, 'webhook_url cannot be nil'
      end

      if webhook_url.to_s.length > 256
        fail ArgumentError, 'invalid value for "webhook_url", the character length must be smaller than or equal to 256.'
      end

      @webhook_url = webhook_url
    end

    # Custom attribute writer method with validation
    # @param [Object] csrf_token Value to be assigned
    def csrf_token=(csrf_token)
      if csrf_token.nil?
        fail ArgumentError, 'csrf_token cannot be nil'
      end

      if csrf_token.to_s.length > 36
        fail ArgumentError, 'invalid value for "csrf_token", the character length must be smaller than or equal to 36.'
      end

      pattern = Regexp.new(/^[-0-9a-zA-Z\-]+$/)
      if csrf_token !~ pattern
        fail ArgumentError, "invalid value for \"csrf_token\", must conform to the pattern #{pattern}."
      end

      @csrf_token = csrf_token
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          name_kana == o.name_kana &&
          name_alphabet == o.name_alphabet &&
          name_short == o.name_short &&
          contact_name == o.contact_name &&
          contact_email == o.contact_email &&
          contact_url == o.contact_url &&
          contact_phone == o.contact_phone &&
          contact_opening_hours == o.contact_opening_hours &&
          callback_url == o.callback_url &&
          webhook_url == o.webhook_url &&
          csrf_token == o.csrf_token
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, name_kana, name_alphabet, name_short, contact_name, contact_email, contact_url, contact_phone, contact_opening_hours, callback_url, webhook_url, csrf_token].hash
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
