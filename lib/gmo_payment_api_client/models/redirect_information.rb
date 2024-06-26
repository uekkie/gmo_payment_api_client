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
  # リダイレクト情報
  class RedirectInformation
    # リダイレクト先のURL
    attr_accessor :redirect_url

    # リダイレクト時のHTTPメソッド   原則 `GET` です。詳細は[リダイレクトとコールバック](#tag/callback)を参照ください。 
    attr_accessor :http_method

    # リダイレクト処理のタイプ   - `TDS2`：3Dセキュア - `WALLET_CHARGE`：Pay払い 都度支払い - `WALLET_AUTHORIZE`：Pay払い 利用承諾 
    attr_accessor :redirect_type

    # リダイレクト時のパラメーター   リダイレクト時のHTTPメソッドが `POST` の場合に、リクエストボディに設定するパラメーター(Map形式)です。   `GET` の場合は、クエリパラメーターとしてリダイレクト先URLに含まれるため、この項目は返しません。 
    attr_accessor :redirect_parameters

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
        :'redirect_url' => :'redirectUrl',
        :'http_method' => :'httpMethod',
        :'redirect_type' => :'redirectType',
        :'redirect_parameters' => :'redirectParameters'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'redirect_url' => :'String',
        :'http_method' => :'String',
        :'redirect_type' => :'String',
        :'redirect_parameters' => :'Hash<String, Object>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `GmoPaymentApiClient::RedirectInformation` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `GmoPaymentApiClient::RedirectInformation`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'redirect_url')
        self.redirect_url = attributes[:'redirect_url']
      end

      if attributes.key?(:'http_method')
        self.http_method = attributes[:'http_method']
      end

      if attributes.key?(:'redirect_type')
        self.redirect_type = attributes[:'redirect_type']
      end

      if attributes.key?(:'redirect_parameters')
        if (value = attributes[:'redirect_parameters']).is_a?(Hash)
          self.redirect_parameters = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@redirect_url.nil? && @redirect_url.to_s.length > 512
        invalid_properties.push('invalid value for "redirect_url", the character length must be smaller than or equal to 512.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@redirect_url.nil? && @redirect_url.to_s.length > 512
      http_method_validator = EnumAttributeValidator.new('String', ["GET", "POST"])
      return false unless http_method_validator.valid?(@http_method)
      redirect_type_validator = EnumAttributeValidator.new('String', ["TDS2", "WALLET_CHARGE", "WALLET_AUTHORIZE"])
      return false unless redirect_type_validator.valid?(@redirect_type)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] redirect_url Value to be assigned
    def redirect_url=(redirect_url)
      if redirect_url.nil?
        fail ArgumentError, 'redirect_url cannot be nil'
      end

      if redirect_url.to_s.length > 512
        fail ArgumentError, 'invalid value for "redirect_url", the character length must be smaller than or equal to 512.'
      end

      @redirect_url = redirect_url
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] http_method Object to be assigned
    def http_method=(http_method)
      validator = EnumAttributeValidator.new('String', ["GET", "POST"])
      unless validator.valid?(http_method)
        fail ArgumentError, "invalid value for \"http_method\", must be one of #{validator.allowable_values}."
      end
      @http_method = http_method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] redirect_type Object to be assigned
    def redirect_type=(redirect_type)
      validator = EnumAttributeValidator.new('String', ["TDS2", "WALLET_CHARGE", "WALLET_AUTHORIZE"])
      unless validator.valid?(redirect_type)
        fail ArgumentError, "invalid value for \"redirect_type\", must be one of #{validator.allowable_values}."
      end
      @redirect_type = redirect_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          redirect_url == o.redirect_url &&
          http_method == o.http_method &&
          redirect_type == o.redirect_type &&
          redirect_parameters == o.redirect_parameters
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [redirect_url, http_method, redirect_type, redirect_parameters].hash
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
