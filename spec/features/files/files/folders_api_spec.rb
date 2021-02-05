require 'spec_helper'

describe 'Hubspot::Files::Files::FoldersApi' do
  subject(:settings_api) { Hubspot::Files::Files::FoldersApi.new }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:archive_by_path) }
  it { is_expected.to respond_to(:check_update_status) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:do_search) }
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:get_by_path) }
  it { is_expected.to respond_to(:update_properties) }
end
