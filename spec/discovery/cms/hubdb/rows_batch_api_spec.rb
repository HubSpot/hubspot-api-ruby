require 'spec_helper'

describe 'Hubspot::Discovery::Cms::Hubdb::RowsBatchApi' do
  subject(:rows_batch_api) { Hubspot::Client.new(access_token: 'test').cms.hubdb.rows_batch_api }
  
  it { is_expected.to respond_to(:clone_draft_table_rows) }
  it { is_expected.to respond_to(:create_draft_table_rows) }
  it { is_expected.to respond_to(:purge_draft_table_rows) }
  it { is_expected.to respond_to(:read_draft_table_rows) }
  it { is_expected.to respond_to(:read_table_rows) }
  it { is_expected.to respond_to(:replace_draft_table_rows) }
  it { is_expected.to respond_to(:update_draft_table_rows) }
end
