require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Tickets::MergeApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').crm.tickets.merge_api }
  
  it { is_expected.to respond_to(:merge) }
end
