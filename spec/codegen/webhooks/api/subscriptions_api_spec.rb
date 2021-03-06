=begin
#Webhooks API

#Provides a way for apps to subscribe to certain change events in HubSpot. Once configured, apps will receive event payloads containing details about the changes at a specified target URL. There can only be one target URL for receiving event notifications per app.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Hubspot::Webhooks::SubscriptionsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SubscriptionsApi' do
  before do
    # run before each test
    @api_instance = Hubspot::Webhooks::SubscriptionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SubscriptionsApi' do
    it 'should create an instance of SubscriptionsApi' do
      expect(@api_instance).to be_instance_of(Hubspot::Webhooks::SubscriptionsApi)
    end
  end

  # unit tests for archive
  # Delete a subscription
  # Permanently deletes a subscription. This cannot be undone.
  # @param subscription_id The ID of subscription to delete.
  # @param app_id The ID of the target app.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'archive test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create
  # Subscribe to an event
  # Creates a new webhook subscription for the given app. Each subscription in an app must be unique.
  # @param app_id The ID of the target app.
  # @param subscription_create_request Details about the new subscription.
  # @param [Hash] opts the optional parameters
  # @return [SubscriptionResponse]
  describe 'create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_all
  # Get subscription details
  # Returns full details for all existing subscriptions for the given app.
  # @param app_id The ID of the target app.
  # @param [Hash] opts the optional parameters
  # @return [SubscriptionListResponse]
  describe 'get_all test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_by_id
  # Get subscription
  # Returns details about a subscription.
  # @param app_id The ID of the target app.
  # @param subscription_id The ID of the target subscription.
  # @param [Hash] opts the optional parameters
  # @return [SubscriptionResponse]
  describe 'get_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update
  # Update a subscription
  # Updates the details for an existing subscription.
  # @param subscription_id The ID of the subscription to update.
  # @param app_id The ID of the target app.
  # @param subscription_patch_request Updated details for the subscription.
  # @param [Hash] opts the optional parameters
  # @return [SubscriptionResponse]
  describe 'update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_batch
  # Batch update subscriptions
  # Activates or deactivates target app subscriptions.
  # @param app_id The app ID of the target app.
  # @param batch_input_subscription_batch_update_request Updated details for the specified subscriptions.
  # @param [Hash] opts the optional parameters
  # @return [BatchResponseSubscriptionResponse]
  describe 'update_batch test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
