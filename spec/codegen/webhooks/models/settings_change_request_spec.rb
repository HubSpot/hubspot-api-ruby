=begin
#Webhooks API

#Provides a way for apps to subscribe to certain change events in HubSpot. Once configured, apps will receive event payloads containing details about the changes at a specified target URL. There can only be one target URL for receiving event notifications per app.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Hubspot::Webhooks::SettingsChangeRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SettingsChangeRequest' do
  before do
    # run before each test
    @instance = Hubspot::Webhooks::SettingsChangeRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SettingsChangeRequest' do
    it 'should create an instance of SettingsChangeRequest' do
      expect(@instance).to be_instance_of(Hubspot::Webhooks::SettingsChangeRequest)
    end
  end
  describe 'test attribute "target_url"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "throttling"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
