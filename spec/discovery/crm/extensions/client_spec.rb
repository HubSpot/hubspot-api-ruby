require 'spec_helper'

describe 'Hubspot::Client' do
  subject(:client) { Hubspot::Client.new(access_token: 'test').crm.extensions }
  
  it { is_expected.to respond_to(:calling) }
  it { is_expected.to respond_to(:cards) }
  it { is_expected.to respond_to(:videoconferencing) }

end
