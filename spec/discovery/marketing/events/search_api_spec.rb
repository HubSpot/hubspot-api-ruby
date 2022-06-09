require 'spec_helper'

describe 'Hubspot::Disovery::Marketing::Events::SearchApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').marketing.events.search_api }
  
  it { is_expected.to respond_to(:do_search) }
end
