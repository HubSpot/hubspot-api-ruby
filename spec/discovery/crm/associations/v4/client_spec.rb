require 'spec_helper'

describe 'Hubspot::Client' do
  subject(:client) { Hubspot::Client.new(access_token: 'test').crm.associations.v4 }
  
  it { is_expected.to respond_to(:schema) }
end
