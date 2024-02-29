require 'spec_helper'

describe 'Hubspot::Discovery::Events::Send::CustomEventDataApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').events.send.custom_event_data_api}
  
  it { is_expected.to respond_to(:call_send) }
end
