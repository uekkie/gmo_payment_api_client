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
  class KonbiniCode
    SEVEN_ELEVEN = "SEVEN_ELEVEN".freeze
    LAWSON = "LAWSON".freeze
    FAMILYMART = "FAMILYMART".freeze
    MINISTOP = "MINISTOP".freeze
    SEICOMART = "SEICOMART".freeze

    def self.all_vars
      @all_vars ||= [SEVEN_ELEVEN, LAWSON, FAMILYMART, MINISTOP, SEICOMART].freeze
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      return value if KonbiniCode.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #KonbiniCode"
    end
  end
end
