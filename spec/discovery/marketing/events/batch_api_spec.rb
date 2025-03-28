require 'spec_helper'

describe 'Hubspot::Discovery::Marketing::Events::BatchApi' do
  subject(:BatchApi) { Hubspot::Client.new(access_token: 'test').marketing.events.batch_api }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:archive_by_object_id) }
  it { is_expected.to respond_to(:update_by_object_id) }
  it { is_expected.to respond_to(:upsert) }
end
