require 'spec_helper'

describe 'Hubspot::Discovery::Cms::Pages::LandingPagesApi' do
  subject(:pages_api) { Hubspot::Client.new(access_token: 'test').cms.pages.landing_pages_api }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:archive_batch) }
  it { is_expected.to respond_to(:archive_folder) }
  it { is_expected.to respond_to(:archive_folders) }
  it { is_expected.to respond_to(:attach_to_lang_group) }
  it { is_expected.to respond_to(:clone) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:create_ab_test_variation) }
  it { is_expected.to respond_to(:create_batch) }
  it { is_expected.to respond_to(:create_folder) }
  it { is_expected.to respond_to(:create_folders) }
  it { is_expected.to respond_to(:create_lang_variation) }
  it { is_expected.to respond_to(:detach_from_lang_group) }
  it { is_expected.to respond_to(:end_active_ab_test) }
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:get_draft_by_id) }
  it { is_expected.to respond_to(:get_folder_by_id) }
  it { is_expected.to respond_to(:get_folder_previous_version) }
  it { is_expected.to respond_to(:get_folder_previous_versions) }
  it { is_expected.to respond_to(:get_folders_page) }
  it { is_expected.to respond_to(:get_page) }
  it { is_expected.to respond_to(:get_previous_version) }
  it { is_expected.to respond_to(:get_previous_versions) }
  it { is_expected.to respond_to(:push_live) }
  it { is_expected.to respond_to(:read_batch) }
  it { is_expected.to respond_to(:read_folders) }
  it { is_expected.to respond_to(:rerun_previous_ab_test) }
  it { is_expected.to respond_to(:reset_draft) }
  it { is_expected.to respond_to(:restore_folder_previous_version) }
  it { is_expected.to respond_to(:restore_previous_version) }
  it { is_expected.to respond_to(:restore_previous_version_to_draft) }
  it { is_expected.to respond_to(:schedule) }
  it { is_expected.to respond_to(:set_lang_primary) }
  it { is_expected.to respond_to(:update) }
  it { is_expected.to respond_to(:update_batch) }
  it { is_expected.to respond_to(:update_draft) }
  it { is_expected.to respond_to(:update_folder) }
  it { is_expected.to respond_to(:update_folders) }
  it { is_expected.to respond_to(:update_langs) }
end
