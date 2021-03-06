=begin
#Custom Workflow Actions

#Create custom workflow actions

The version of the OpenAPI document: v4

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Hubspot::Automation::Actions::CallbackCompletionBatchRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CallbackCompletionBatchRequest' do
  before do
    # run before each test
    @instance = Hubspot::Automation::Actions::CallbackCompletionBatchRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CallbackCompletionBatchRequest' do
    it 'should create an instance of CallbackCompletionBatchRequest' do
      expect(@instance).to be_instance_of(Hubspot::Automation::Actions::CallbackCompletionBatchRequest)
    end
  end
  describe 'test attribute "callback_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "output_fields"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
