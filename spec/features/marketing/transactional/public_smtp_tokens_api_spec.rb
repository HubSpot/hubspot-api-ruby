require 'spec_helper'

describe 'Hubspot::Marketing::Transactional::PublicSmtpTokensApi' do
  subject(:settings_api) { Hubspot::Marketing::Transactional::PublicSmtpTokensApi.new }
  
  it { is_expected.to respond_to(:archive_token) }
  it { is_expected.to respond_to(:get_token_by_id) }
  it { is_expected.to respond_to(:get_tokens_page) }
  it { is_expected.to respond_to(:create_token) }
  it { is_expected.to respond_to(:reset_password) }
end
