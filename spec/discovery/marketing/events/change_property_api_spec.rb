require 'spec_helper'

describe 'Hubspot::Discovery::Marketing::Events::ChangePropertyApi' do
  subject(:ChangePropertyApi) { Hubspot::Client.new(access_token: 'test').marketing.events.change_property_api }
  
  it { is_expected.to respond_to(:cancel) }
  it { is_expected.to respond_to(:complete) }
end
