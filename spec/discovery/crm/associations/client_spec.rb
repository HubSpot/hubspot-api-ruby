require 'spec_helper'

describe 'Hubspot::Client' do
  subject(:client) { Hubspot::Client.new(access_token: 'test').crm.associations }
  
  it { is_expected.to respond_to(:v4) }
  it { is_expected.to respond_to(:schema) }
end
