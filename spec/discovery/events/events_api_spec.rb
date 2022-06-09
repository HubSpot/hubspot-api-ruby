require 'spec_helper'

describe 'Hubspot::Discovery::Events::EventsApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').events.events_api }
  
  it { is_expected.to respond_to(:get_page) }
end
