=begin
#Feedback Submissions

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Hubspot::Crm::Objects::FeedbackSubmissions::BasicApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'BasicApi' do
  before do
    # run before each test
    @api_instance = Hubspot::Crm::Objects::FeedbackSubmissions::BasicApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BasicApi' do
    it 'should create an instance of BasicApi' do
      expect(@api_instance).to be_instance_of(Hubspot::Crm::Objects::FeedbackSubmissions::BasicApi)
    end
  end

  # unit tests for get_by_id
  # Read
  # Read an Object identified by &#x60;{feedbackSubmissionId}&#x60;. &#x60;{feedbackSubmissionId}&#x60; refers to the internal object ID by default, or optionally any unique property value as specified by the &#x60;idProperty&#x60; query param.  Control what is returned via the &#x60;properties&#x60; query param.
  # @param feedback_submission_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :properties A comma separated list of the properties to be returned in the response. If any of the specified properties are not present on the requested object(s), they will be ignored.
  # @option opts [Array<String>] :properties_with_history A comma separated list of the properties to be returned along with their history of previous values. If any of the specified properties are not present on the requested object(s), they will be ignored.
  # @option opts [Array<String>] :associations A comma separated list of object types to retrieve associated IDs for. If any of the specified associations do not exist, they will be ignored.
  # @option opts [Boolean] :archived Whether to return only results that have been archived.
  # @option opts [String] :id_property The name of a property whose values are unique for this object type
  # @return [SimplePublicObjectWithAssociations]
  describe 'get_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_page
  # List
  # Read a page of feedback submissions. Control what is returned via the &#x60;properties&#x60; query param.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The maximum number of results to display per page.
  # @option opts [String] :after The paging cursor token of the last successfully read resource will be returned as the &#x60;paging.next.after&#x60; JSON property of a paged response containing more results.
  # @option opts [Array<String>] :properties A comma separated list of the properties to be returned in the response. If any of the specified properties are not present on the requested object(s), they will be ignored.
  # @option opts [Array<String>] :properties_with_history A comma separated list of the properties to be returned along with their history of previous values. If any of the specified properties are not present on the requested object(s), they will be ignored. Usage of this parameter will reduce the maximum number of objects that can be read by a single request.
  # @option opts [Array<String>] :associations A comma separated list of object types to retrieve associated IDs for. If any of the specified associations do not exist, they will be ignored.
  # @option opts [Boolean] :archived Whether to return only results that have been archived.
  # @return [CollectionResponseSimplePublicObjectWithAssociationsForwardPaging]
  describe 'get_page test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for submissions
  # Create
  # Create a feedback submission with the given properties and return a copy of the object, including the ID. Documentation and examples for creating standard feedback submissions is provided.
  # @param simple_public_object_input 
  # @param [Hash] opts the optional parameters
  # @return [SimplePublicObject]
  describe 'submissions test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for submissions_feedback_submission_id
  # Archive
  # Move an Object identified by &#x60;{feedbackSubmissionId}&#x60; to the recycling bin.
  # @param feedback_submission_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'submissions_feedback_submission_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for submissions_feedback_submission_id_0
  # Update
  # Perform a partial update of an Object identified by &#x60;{feedbackSubmissionId}&#x60;. &#x60;{feedbackSubmissionId}&#x60; refers to the internal object ID by default, or optionally any unique property value as specified by the &#x60;idProperty&#x60; query param. Provided property values will be overwritten. Read-only and non-existent properties will be ignored. Properties values can be cleared by passing an empty string.
  # @param feedback_submission_id 
  # @param simple_public_object_input 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :id_property The name of a property whose values are unique for this object type
  # @return [SimplePublicObject]
  describe 'submissions_feedback_submission_id_0 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
