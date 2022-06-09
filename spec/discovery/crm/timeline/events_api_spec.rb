require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Timeline::EventsApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').crm.timeline.events_api }
  
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:create_batch) }
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:get_detail_by_id) }
  it { is_expected.to respond_to(:get_render_by_id) }
end
