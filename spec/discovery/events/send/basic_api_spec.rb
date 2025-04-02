require 'spec_helper'

describe 'Hubspot::Discovery::Events::Send::BasicApi' do
  subject(:BasicApi) { Hubspot::Client.new(access_token: 'test').events.send.basic_api}
  
  it { is_expected.to respond_to(:call_send) }
end
