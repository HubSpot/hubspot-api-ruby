=begin
#Properties

#All HubSpot objects store data in default and custom properties. These endpoints provide access to read and modify object properties in HubSpot.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Hubspot::Crm::Properties::CoreApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CoreApi' do
  before do
    # run before each test
    @api_instance = Hubspot::Crm::Properties::CoreApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CoreApi' do
    it 'should create an instance of CoreApi' do
      expect(@api_instance).to be_instance_of(Hubspot::Crm::Properties::CoreApi)
    end
  end

  # unit tests for archive
  # Archive a property
  # Move a property identified by {propertyName} to the recycling bin.
  # @param object_type 
  # @param property_name 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'archive test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create
  # Create a property
  # Create and return a copy of a new property for the specified object type.
  # @param object_type 
  # @param property_create 
  # @param [Hash] opts the optional parameters
  # @return [Property]
  describe 'create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_all
  # Read all properties
  # Read all existing properties for the specified object type and HubSpot account.
  # @param object_type 
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :archived Whether to return only results that have been archived.
  # @return [CollectionResponseProperty]
  describe 'get_all test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_by_name
  # Read a property
  # Read a property identified by {propertyName}.
  # @param object_type 
  # @param property_name 
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :archived Whether to return only results that have been archived.
  # @return [Property]
  describe 'get_by_name test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update
  # Update a property
  # Perform a partial update of a property identified by {propertyName}. Provided fields will be overwritten.
  # @param object_type 
  # @param property_name 
  # @param property_update 
  # @param [Hash] opts the optional parameters
  # @return [Property]
  describe 'update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
