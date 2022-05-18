=begin
#Emails

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Hubspot::Crm::Objects::Emails::AssociationsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AssociationsApi' do
  before do
    # run before each test
    @api_instance = Hubspot::Crm::Objects::Emails::AssociationsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AssociationsApi' do
    it 'should create an instance of AssociationsApi' do
      expect(@api_instance).to be_instance_of(Hubspot::Crm::Objects::Emails::AssociationsApi)
    end
  end

  # unit tests for archive
  # Remove an association between two emails
  # @param email_id 
  # @param to_object_type 
  # @param to_object_id 
  # @param association_type 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'archive test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create
  # Associate a email with another object
  # @param email_id 
  # @param to_object_type 
  # @param to_object_id 
  # @param association_type 
  # @param [Hash] opts the optional parameters
  # @return [SimplePublicObjectWithAssociations]
  describe 'create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_all
  # List associations of a email by type
  # @param email_id 
  # @param to_object_type 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :after The paging cursor token of the last successfully read resource will be returned as the &#x60;paging.next.after&#x60; JSON property of a paged response containing more results.
  # @option opts [Integer] :limit The maximum number of results to display per page.
  # @return [CollectionResponseAssociatedIdForwardPaging]
  describe 'get_all test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
