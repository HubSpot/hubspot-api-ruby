require 'spec_helper'

describe 'Hubspot::Files::Files::FilesApi' do
  subject(:settings_api) { Hubspot::Files::Files::FilesApi.new }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:archive_gdpr) }
  it { is_expected.to respond_to(:check_import) }
  it { is_expected.to respond_to(:do_search) }
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:get_signed_url) }
  it { is_expected.to respond_to(:import_from_url) }
  it { is_expected.to respond_to(:replace) }
  it { is_expected.to respond_to(:update_properties) }
  it { is_expected.to respond_to(:upload) }
end
