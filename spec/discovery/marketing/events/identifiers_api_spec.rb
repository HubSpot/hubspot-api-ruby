require 'spec_helper'

describe 'Hubspot::Discovery::Marketing::Events::IdentifiersApi' do
  subject(:IdentifiersApi) { Hubspot::Client.new(access_token: 'test').marketing.events.identifiers_api }
  
  it { is_expected.to respond_to(:do_search) }
  it { is_expected.to respond_to(:search_portal_events) }
end
