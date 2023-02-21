require 'spec_helper'

describe 'Hubspot::Client' do
  subject(:client) { Hubspot::Client.new(access_token: 'test').marketing }
  
  it { is_expected.to respond_to(:events) }
  it { is_expected.to respond_to(:forms) }
  it { is_expected.to respond_to(:transactional) }
end
