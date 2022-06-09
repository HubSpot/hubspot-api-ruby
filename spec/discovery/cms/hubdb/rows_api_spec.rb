require 'spec_helper'

describe 'Hubspot::Discovery::Cms::Hubdb::RowsApi' do
  subject(:rows_api) { Hubspot::Client.new(access_token: 'test').cms.hubdb.rows_api }
  
  it { is_expected.to respond_to(:clone_draft_table_row) }
  it { is_expected.to respond_to(:create_table_row) }
  it { is_expected.to respond_to(:get_draft_table_row_by_id) }
  it { is_expected.to respond_to(:get_table_row) }
  it { is_expected.to respond_to(:get_table_rows) }
  it { is_expected.to respond_to(:purge_draft_table_row) }
  it { is_expected.to respond_to(:read_draft_table_rows) }
  it { is_expected.to respond_to(:replace_draft_table_row) }
  it { is_expected.to respond_to(:update_draft_table_row) }
end
