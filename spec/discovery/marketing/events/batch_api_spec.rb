require 'spec_helper'

describe 'Hubspot::Discovery::Marketing::Events::BatchApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').marketing.events.batch_api }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:do_upsert) }
end
