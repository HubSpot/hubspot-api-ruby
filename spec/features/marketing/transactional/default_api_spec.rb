require 'spec_helper'

describe 'Hubspot::Marketing::Transactional::DefaultApi' do
  subject(:settings_api) { Hubspot::Marketing::Transactional::DefaultApi.new }
  
  it { is_expected.to respond_to(:archive_token) }
  it { is_expected.to respond_to(:get_token_by_id) }
  it { is_expected.to respond_to(:get_tokens_page) }
  it { is_expected.to respond_to(:create_token) }
  it { is_expected.to respond_to(:reset_password) }
  it { is_expected.to respond_to(:send_email) }
end
