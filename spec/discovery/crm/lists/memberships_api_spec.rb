require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Lists::MembershipsApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').crm.lists.memberships_api }
  
  it { is_expected.to respond_to(:add) }
  it { is_expected.to respond_to(:add_all_from_list) }
  it { is_expected.to respond_to(:add_and_remove) }
  it { is_expected.to respond_to(:get_page) }
  it { is_expected.to respond_to(:remove) }
  it { is_expected.to respond_to(:remove_all) }
  it { is_expected.to respond_to(:get_lists) }
end
