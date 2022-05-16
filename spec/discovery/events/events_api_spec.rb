require 'spec_helper'

describe 'Hubspot::Discovery::Events::EventsApi' do
  subject(:api) { Hubspot::Client.new(api_key: 'test').events.events_api }
  
  it { is_expected.to respond_to(:get_page) }
end
