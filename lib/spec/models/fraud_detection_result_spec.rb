=begin
#PGマルチペイメントサービス OpenAPIタイプ

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.3.1

Generated by: https://openapi-generator.tech
Generator version: 7.6.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for GmoPaymentApiClient::FraudDetectionResult
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe GmoPaymentApiClient::FraudDetectionResult do
  let(:instance) { GmoPaymentApiClient::FraudDetectionResult.new }

  describe 'test an instance of FraudDetectionResult' do
    it 'should create an instance of FraudDetectionResult' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(GmoPaymentApiClient::FraudDetectionResult)
    end
  end

  describe 'test attribute "screening_type"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["RED_SHIELD"])
      # validator.allowable_values.each do |value|
      #   expect { instance.screening_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "screening_transaction_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "screening_result_code"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "screening_result_raw_data"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end