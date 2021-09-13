require 'spec_helper'

describe 'Hubspot::Marketing::Transactional::SingleSendApi' do
  subject(:api) { Hubspot::Marketing::Transactional::SingleSendApi.new }
  
  it { is_expected.to respond_to(:send_email) }
end
