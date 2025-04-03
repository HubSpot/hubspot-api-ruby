require 'spec_helper'

describe 'Hubspot::Discovery::Events::Send::BatchApi' do
  subject(:BatchApi) { Hubspot::Client.new(access_token: 'test').events.send.batch_api}
  
  it { is_expected.to respond_to(:call_send) }
end
