require 'spec_helper'

describe 'Hubspot::Discovery::Events::Send::BehavioralEventsTrackingApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').events.send.behavioral_events_tracking_api}
  
  it { is_expected.to respond_to(:call_send) }
end
