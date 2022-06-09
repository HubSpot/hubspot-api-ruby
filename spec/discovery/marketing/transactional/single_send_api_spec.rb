require 'spec_helper'

describe 'Hubspot::Discovery::Marketing::Transactional::SingleSendApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').marketing.transactional.single_send_api }
  
  it { is_expected.to respond_to(:send_email) }
end
