=begin
#Timeline events

#This feature allows an app to create and configure custom events that can show up in the timelines of certain CRM objects like contacts, companies, tickets, or deals. You'll find multiple use cases for this API in the sections below.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Hubspot::Crm::Timeline::EventsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'EventsApi' do
  before do
    # run before each test
    @api_instance = Hubspot::Crm::Timeline::EventsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EventsApi' do
    it 'should create an instance of EventsApi' do
      expect(@api_instance).to be_instance_of(Hubspot::Crm::Timeline::EventsApi)
    end
  end

  # unit tests for create
  # Create a single event
  # Creates an instance of a timeline event based on an event template. Once created, this event is immutable on the object timeline and cannot be modified. If the event template was configured to update object properties via &#x60;objectPropertyName&#x60;, this call will also attempt to updates those properties, or add them if they don&#39;t exist.
  # @param timeline_event The timeline event definition.
  # @param [Hash] opts the optional parameters
  # @return [TimelineEventResponse]
  describe 'create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_batch
  # Creates multiple events
  # Creates multiple instances of timeline events based on an event template. Once created, these event are immutable on the object timeline and cannot be modified. If the event template was configured to update object properties via &#x60;objectPropertyName&#x60;, this call will also attempt to updates those properties, or add them if they don&#39;t exist.
  # @param batch_input_timeline_event The timeline event definition.
  # @param [Hash] opts the optional parameters
  # @return [BatchResponseTimelineEventResponse]
  describe 'create_batch test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_by_id
  # Gets the event
  # This returns the previously created event. It contains all existing info for the event, but not necessarily the CRM object.
  # @param event_template_id The event template ID.
  # @param event_id The event ID.
  # @param [Hash] opts the optional parameters
  # @return [TimelineEventResponse]
  describe 'get_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_detail_by_id
  # Gets the detailTemplate as rendered
  # This will take the &#x60;detailTemplate&#x60; from the event template and return an object rendering the specified event. If the template references &#x60;extraData&#x60; that isn&#39;t found in the event, it will be ignored and we&#39;ll render without it.
  # @param event_template_id The event template ID.
  # @param event_id The event ID.
  # @param [Hash] opts the optional parameters
  # @return [EventDetail]
  describe 'get_detail_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_render_by_id
  # Renders the header or detail as HTML
  # This will take either the &#x60;headerTemplate&#x60; or &#x60;detailTemplate&#x60; from the event template and render for the specified event as HTML. If the template references &#x60;extraData&#x60; that isn&#39;t found in the event, it will be ignored and we&#39;ll render without it.
  # @param event_template_id The event template ID.
  # @param event_id The event ID.
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :detail Set to &#39;true&#39;, we want to render the &#x60;detailTemplate&#x60; instead of the &#x60;headerTemplate&#x60;.
  # @return [String]
  describe 'get_render_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
