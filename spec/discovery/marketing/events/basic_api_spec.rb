require 'spec_helper'

describe 'Hubspot::Discovery::Marketing::Events::BasicApi' do
  subject(:BasicApi) { Hubspot::Client.new(access_token: 'test').marketing.events.basic_api }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:archive_by_object_id) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:get_all) }
  it { is_expected.to respond_to(:get_by_object_id) }
  it { is_expected.to respond_to(:get_details) }
  it { is_expected.to respond_to(:update) }
  it { is_expected.to respond_to(:update_by_object_id) }
  it { is_expected.to respond_to(:upsert) }
end
