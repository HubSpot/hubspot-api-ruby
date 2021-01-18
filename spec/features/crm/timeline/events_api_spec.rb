require 'spec_helper'

describe 'Hubspot::Crm::Timeline::EventsApi' do
  subject(:events_api) { Hubspot::Crm::Timeline::EventsApi.new }
  
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:create_batch) }
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:get_detail_by_id) }
  it { is_expected.to respond_to(:get_render_by_id) }
end
