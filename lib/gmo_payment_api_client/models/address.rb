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
  # 住所情報
  class Address
    # 住所の宛名   設定できる最大長はUTF-8で60byteです。 
    attr_accessor :name

    # 住所の町域・丁目番地   設定できる最大長はUTF-8で75byteです。 
    attr_accessor :line1

    # 住所の建物・号室   設定できる最大長はUTF-8で75byteです。 
    attr_accessor :line2

    # 住所情報に関する予備項目   設定できる最大長はUTF-8で75byteです。 
    attr_accessor :line3

    # 住所の市区町村   「渋谷区」「横浜市」などの市区町村名です。   日本語・漢字でなくても構いません。   設定できる最大長はUTF-8で75byteです。 
    attr_accessor :city

    # 住所の都道府県番号   [都道府県コード表](https://nlftp.mlit.go.jp/ksj/gml/codelist/PrefCd.html)を参照してください。   日本の場合は「001」から「047」からなる先頭ゼロ埋め3桁の形式です。 
    attr_accessor :state

    # 住所の郵便番号<br>ハイフンの有無は問いません。
    attr_accessor :post_code

    # 住所の国番号<br>ISO3166-1の数字3桁を設定します。   ITU-E.164ではないのでご注意ください。例えば日本の場合「392」です。 
    attr_accessor :country

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'line1' => :'line1',
        :'line2' => :'line2',
        :'line3' => :'line3',
        :'city' => :'city',
        :'state' => :'state',
        :'post_code' => :'postCode',
        :'country' => :'country'
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
        :'line1' => :'String',
        :'line2' => :'String',
        :'line3' => :'String',
        :'city' => :'String',
        :'state' => :'String',
        :'post_code' => :'String',
        :'country' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `GmoPaymentApiClient::Address` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `GmoPaymentApiClient::Address`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      else
        self.name = nil
      end

      if attributes.key?(:'line1')
        self.line1 = attributes[:'line1']
      else
        self.line1 = nil
      end

      if attributes.key?(:'line2')
        self.line2 = attributes[:'line2']
      end

      if attributes.key?(:'line3')
        self.line3 = attributes[:'line3']
      end

      if attributes.key?(:'city')
        self.city = attributes[:'city']
      else
        self.city = nil
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      else
        self.state = nil
      end

      if attributes.key?(:'post_code')
        self.post_code = attributes[:'post_code']
      else
        self.post_code = nil
      end

      if attributes.key?(:'country')
        self.country = attributes[:'country']
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

      if @name.to_s.length > 40
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 40.')
      end

      if @line1.nil?
        invalid_properties.push('invalid value for "line1", line1 cannot be nil.')
      end

      if @line1.to_s.length > 50
        invalid_properties.push('invalid value for "line1", the character length must be smaller than or equal to 50.')
      end

      if !@line2.nil? && @line2.to_s.length > 50
        invalid_properties.push('invalid value for "line2", the character length must be smaller than or equal to 50.')
      end

      if !@line3.nil? && @line3.to_s.length > 50
        invalid_properties.push('invalid value for "line3", the character length must be smaller than or equal to 50.')
      end

      if @city.nil?
        invalid_properties.push('invalid value for "city", city cannot be nil.')
      end

      if @city.to_s.length > 50
        invalid_properties.push('invalid value for "city", the character length must be smaller than or equal to 50.')
      end

      if @state.nil?
        invalid_properties.push('invalid value for "state", state cannot be nil.')
      end

      pattern = Regexp.new(/^[0-9]{3}$/)
      if @state !~ pattern
        invalid_properties.push("invalid value for \"state\", must conform to the pattern #{pattern}.")
      end

      if @post_code.nil?
        invalid_properties.push('invalid value for "post_code", post_code cannot be nil.')
      end

      if @post_code.to_s.length > 16
        invalid_properties.push('invalid value for "post_code", the character length must be smaller than or equal to 16.')
      end

      pattern = Regexp.new(/^[0-9-]+$/)
      if @post_code !~ pattern
        invalid_properties.push("invalid value for \"post_code\", must conform to the pattern #{pattern}.")
      end

      pattern = Regexp.new(/^[0-9]{3}$/)
      if !@country.nil? && @country !~ pattern
        invalid_properties.push("invalid value for \"country\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @name.nil?
      return false if @name.to_s.length > 40
      return false if @line1.nil?
      return false if @line1.to_s.length > 50
      return false if !@line2.nil? && @line2.to_s.length > 50
      return false if !@line3.nil? && @line3.to_s.length > 50
      return false if @city.nil?
      return false if @city.to_s.length > 50
      return false if @state.nil?
      return false if @state !~ Regexp.new(/^[0-9]{3}$/)
      return false if @post_code.nil?
      return false if @post_code.to_s.length > 16
      return false if @post_code !~ Regexp.new(/^[0-9-]+$/)
      return false if !@country.nil? && @country !~ Regexp.new(/^[0-9]{3}$/)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, 'name cannot be nil'
      end

      if name.to_s.length > 40
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 40.'
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] line1 Value to be assigned
    def line1=(line1)
      if line1.nil?
        fail ArgumentError, 'line1 cannot be nil'
      end

      if line1.to_s.length > 50
        fail ArgumentError, 'invalid value for "line1", the character length must be smaller than or equal to 50.'
      end

      @line1 = line1
    end

    # Custom attribute writer method with validation
    # @param [Object] line2 Value to be assigned
    def line2=(line2)
      if line2.nil?
        fail ArgumentError, 'line2 cannot be nil'
      end

      if line2.to_s.length > 50
        fail ArgumentError, 'invalid value for "line2", the character length must be smaller than or equal to 50.'
      end

      @line2 = line2
    end

    # Custom attribute writer method with validation
    # @param [Object] line3 Value to be assigned
    def line3=(line3)
      if line3.nil?
        fail ArgumentError, 'line3 cannot be nil'
      end

      if line3.to_s.length > 50
        fail ArgumentError, 'invalid value for "line3", the character length must be smaller than or equal to 50.'
      end

      @line3 = line3
    end

    # Custom attribute writer method with validation
    # @param [Object] city Value to be assigned
    def city=(city)
      if city.nil?
        fail ArgumentError, 'city cannot be nil'
      end

      if city.to_s.length > 50
        fail ArgumentError, 'invalid value for "city", the character length must be smaller than or equal to 50.'
      end

      @city = city
    end

    # Custom attribute writer method with validation
    # @param [Object] state Value to be assigned
    def state=(state)
      if state.nil?
        fail ArgumentError, 'state cannot be nil'
      end

      pattern = Regexp.new(/^[0-9]{3}$/)
      if state !~ pattern
        fail ArgumentError, "invalid value for \"state\", must conform to the pattern #{pattern}."
      end

      @state = state
    end

    # Custom attribute writer method with validation
    # @param [Object] post_code Value to be assigned
    def post_code=(post_code)
      if post_code.nil?
        fail ArgumentError, 'post_code cannot be nil'
      end

      if post_code.to_s.length > 16
        fail ArgumentError, 'invalid value for "post_code", the character length must be smaller than or equal to 16.'
      end

      pattern = Regexp.new(/^[0-9-]+$/)
      if post_code !~ pattern
        fail ArgumentError, "invalid value for \"post_code\", must conform to the pattern #{pattern}."
      end

      @post_code = post_code
    end

    # Custom attribute writer method with validation
    # @param [Object] country Value to be assigned
    def country=(country)
      if country.nil?
        fail ArgumentError, 'country cannot be nil'
      end

      pattern = Regexp.new(/^[0-9]{3}$/)
      if country !~ pattern
        fail ArgumentError, "invalid value for \"country\", must conform to the pattern #{pattern}."
      end

      @country = country
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          line1 == o.line1 &&
          line2 == o.line2 &&
          line3 == o.line3 &&
          city == o.city &&
          state == o.state &&
          post_code == o.post_code &&
          country == o.country
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, line1, line2, line3, city, state, post_code, country].hash
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
