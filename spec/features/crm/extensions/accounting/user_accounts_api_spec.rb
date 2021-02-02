require 'spec_helper'

describe 'Hubspot::Crm::Extensions::Accounting::UserAccountsApi' do
  subject(:api) { Hubspot::Crm::Extensions::Accounting::UserAccountsApi.new }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:replace) }
end
