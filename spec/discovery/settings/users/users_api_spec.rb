require 'spec_helper'

describe 'Hubspot::Discovery::Settings::Users::UsersApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').settings.users.users_api }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:get_page) }
  it { is_expected.to respond_to(:replace) }
end
