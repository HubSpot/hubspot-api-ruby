require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Extensions::Accounting::UserAccountsApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').crm.extensions.accounting.user_accounts_api }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:replace) }
end
