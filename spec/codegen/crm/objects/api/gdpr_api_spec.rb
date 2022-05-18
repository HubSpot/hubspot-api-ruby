=begin
#CRM Objects

#CRM objects such as companies, contacts, deals, line items, products, tickets, and quotes are standard objects in HubSpot’s CRM. These core building blocks support custom properties, store critical information, and play a central role in the HubSpot application.  ## Supported Object Types  This API provides access to collections of CRM objects, which return a map of property names to values. Each object type has its own set of default properties, which can be found by exploring the [CRM Object Properties API](https://developers.hubspot.com/docs/methods/crm-properties/crm-properties-overview).  |Object Type |Properties returned by default | |--|--| | `companies` | `name`, `domain` | | `contacts` | `firstname`, `lastname`, `email` | | `deals` | `dealname`, `amount`, `closedate`, `pipeline`, `dealstage` | | `products` | `name`, `description`, `price` | | `tickets` | `content`, `hs_pipeline`, `hs_pipeline_stage`, `hs_ticket_category`, `hs_ticket_priority`, `subject` |  Find a list of all properties for an object type using the [CRM Object Properties](https://developers.hubspot.com/docs/methods/crm-properties/get-properties) API. e.g. `GET https://api.hubapi.com/properties/v2/companies/properties`. Change the properties returned in the response using the `properties` array in the request body.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Hubspot::Crm::Objects::GDPRApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'GDPRApi' do
  before do
    # run before each test
    @api_instance = Hubspot::Crm::Objects::GDPRApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GDPRApi' do
    it 'should create an instance of GDPRApi' do
      expect(@api_instance).to be_instance_of(Hubspot::Crm::Objects::GDPRApi)
    end
  end

  # unit tests for purge
  # GDPR DELETE
  # Permanently delete a contact and all associated content to follow GDPR. Use optional property &#39;idProperty&#39; set to &#39;email&#39; to identify contact by email address. If email address is not found, the email address will be added to a blocklist and prevent it from being used in the future.
  # @param object_type 
  # @param public_gdpr_delete_input 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'purge test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
