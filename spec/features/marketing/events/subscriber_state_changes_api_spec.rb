require 'spec_helper'

describe 'Hubspot::Marketing::Events::SubscriberStateChangesApi' do
  subject(:api) { Hubspot::Marketing::Events::SubscriberStateChangesApi.new }
  
  it { is_expected.to respond_to(:do_email_upsert_by_id) }
  it { is_expected.to respond_to(:do_upsert_by_id) }
end
