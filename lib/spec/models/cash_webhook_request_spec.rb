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

# Unit tests for GmoPaymentApiClient::CashWebhookRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe GmoPaymentApiClient::CashWebhookRequest do
  let(:instance) { GmoPaymentApiClient::CashWebhookRequest.new }

  describe 'test an instance of CashWebhookRequest' do
    it 'should create an instance of CashWebhookRequest' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(GmoPaymentApiClient::CashWebhookRequest)
    end
  end

  describe 'test attribute "access_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "event"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["CASH_PAID"])
      # validator.allowable_values.each do |value|
      #   expect { instance.event = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "csrf_token"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end