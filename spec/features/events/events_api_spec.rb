require 'spec_helper'

describe 'Hubspot::Events::EventsApi' do
  subject(:api) { Hubspot::Events::EventsApi.new }
  
  it { is_expected.to respond_to(:get_page) }
end
