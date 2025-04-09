require 'spec_helper'

describe 'Hubspot::Client' do
  subject(:client) { Hubspot::Client.new(access_token: 'test').crm.commerce }
  
  it { is_expected.to respond_to(:invoices) }
end
