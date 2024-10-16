require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Lists::ListsApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').crm.lists.lists_api }
  
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:do_search) }
  it { is_expected.to respond_to(:get_all) }
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:get_by_name) }
  it { is_expected.to respond_to(:remove) }
  it { is_expected.to respond_to(:restore) }
  it { is_expected.to respond_to(:update_list_filters) }
  it { is_expected.to respond_to(:update_name) }
end
