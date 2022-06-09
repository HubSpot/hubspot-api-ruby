require 'spec_helper'

describe 'Hubspot::Discovery::Cms::Hubdb::TablesApi' do
  subject(:tables_api) { Hubspot::Client.new(access_token: 'test').cms.hubdb.tables_api }
  
  it { is_expected.to respond_to(:archive_table) }
  it { is_expected.to respond_to(:clone_draft_table) }
  it { is_expected.to respond_to(:create_table) }
  it { is_expected.to respond_to(:export_draft_table) }
  it { is_expected.to respond_to(:export_table) }
  it { is_expected.to respond_to(:get_all_draft_tables) }
  it { is_expected.to respond_to(:get_all_tables) }
  it { is_expected.to respond_to(:get_draft_table_details_by_id) }
  it { is_expected.to respond_to(:get_table_details) }
  it { is_expected.to respond_to(:import_draft_table) }
  it { is_expected.to respond_to(:publish_draft_table) }
  it { is_expected.to respond_to(:unpublish_table) }
  it { is_expected.to respond_to(:reset_draft_table) }
  it { is_expected.to respond_to(:update_draft_table) }
end
