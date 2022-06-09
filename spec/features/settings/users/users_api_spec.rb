require 'spec_helper'

describe 'Hubspot::Settings::Users::UsersApi' do
  subject(:api) { Hubspot::Settings::Users::UsersApi.new }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:get_page) }
  it { is_expected.to respond_to(:replace) }
end
