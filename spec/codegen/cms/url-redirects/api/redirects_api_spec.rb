=begin
#URL redirects

#URL redirect operations

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Hubspot::Cms::UrlRedirects::RedirectsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'RedirectsApi' do
  before do
    # run before each test
    @api_instance = Hubspot::Cms::UrlRedirects::RedirectsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RedirectsApi' do
    it 'should create an instance of RedirectsApi' do
      expect(@api_instance).to be_instance_of(Hubspot::Cms::UrlRedirects::RedirectsApi)
    end
  end

  # unit tests for archive
  # Delete a redirect
  # Delete one existing redirect, so it is no longer mapped.
  # @param url_redirect_id The ID of the target redirect.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'archive test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create
  # Create a redirect
  # Creates and configures a new URL redirect.
  # @param url_mapping_create_request_body 
  # @param [Hash] opts the optional parameters
  # @return [UrlMapping]
  describe 'create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_by_id
  # Get details for a redirect
  # Returns the details for a single existing URL redirect by ID.
  # @param url_redirect_id The ID of the target redirect.
  # @param [Hash] opts the optional parameters
  # @return [UrlMapping]
  describe 'get_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_page
  # Get current redirects
  # Returns all existing URL redirects. Results can be limited and filtered by creation or updated date.
  # @param [Hash] opts the optional parameters
  # @option opts [DateTime] :created_at Only return redirects created on exactly this date.
  # @option opts [DateTime] :created_after Only return redirects created after this date.
  # @option opts [DateTime] :created_before Only return redirects created before this date.
  # @option opts [DateTime] :updated_at Only return redirects last updated on exactly this date.
  # @option opts [DateTime] :updated_after Only return redirects last updated after this date.
  # @option opts [DateTime] :updated_before Only return redirects last updated before this date.
  # @option opts [Array<String>] :sort 
  # @option opts [String] :after The paging cursor token of the last successfully read resource will be returned as the &#x60;paging.next.after&#x60; JSON property of a paged response containing more results.
  # @option opts [Integer] :limit Maximum number of result per page
  # @option opts [Boolean] :archived Whether to return only results that have been archived.
  # @return [CollectionResponseWithTotalUrlMappingForwardPaging]
  describe 'get_page test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update
  # Update a redirect
  # Updates the settings for an existing URL redirect.
  # @param url_redirect_id 
  # @param url_mapping 
  # @param [Hash] opts the optional parameters
  # @return [UrlMapping]
  describe 'update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
