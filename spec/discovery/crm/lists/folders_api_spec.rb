require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Lists::FoldersApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').crm.lists.folders_api }
  
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:get_all) }
  it { is_expected.to respond_to(:move) }
  it { is_expected.to respond_to(:move_list) }
  it { is_expected.to respond_to(:remove) }
  it { is_expected.to respond_to(:rename) }
end
