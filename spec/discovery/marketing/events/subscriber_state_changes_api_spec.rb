require 'spec_helper'

describe 'Hubspot::Discovery::Marketing::Events::SubscriberStateChangesApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').marketing.events.subscriber_state_changes_api }
  
  it { is_expected.to respond_to(:do_email_upsert_by_id) }
  it { is_expected.to respond_to(:do_upsert_by_id) }
end
