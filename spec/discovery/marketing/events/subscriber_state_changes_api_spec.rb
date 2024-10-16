require 'spec_helper'

describe 'Hubspot::Discovery::Marketing::Events::SubscriberStateChangesApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').marketing.events.subscriber_state_changes_api }
  
  it { is_expected.to respond_to(:upsert_by_contact_email) }
  it { is_expected.to respond_to(:upsert_by_contact_id) }
end
