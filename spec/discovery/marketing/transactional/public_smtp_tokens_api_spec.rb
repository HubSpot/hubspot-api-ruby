require 'spec_helper'

describe 'Hubspot::Discovery::Marketing::Transactional::PublicSmtpTokensApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').marketing.transactional.public_smtp_tokens_api }
  
  it { is_expected.to respond_to(:archive_token) }
  it { is_expected.to respond_to(:get_token_by_id) }
  it { is_expected.to respond_to(:get_tokens_page) }
  it { is_expected.to respond_to(:create_token) }
  it { is_expected.to respond_to(:reset_password) }
end
