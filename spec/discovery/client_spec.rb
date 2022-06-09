require 'spec_helper'

describe 'Hubspot::Client' do
  subject(:client) { Hubspot::Client.new(access_token: 'test') }
  
  it { is_expected.to respond_to(:automation) }
  it { is_expected.to respond_to(:cms) }
  it { is_expected.to respond_to(:communication_preferences) }
  it { is_expected.to respond_to(:conversations) }
  it { is_expected.to respond_to(:crm) }
  it { is_expected.to respond_to(:events) }
  it { is_expected.to respond_to(:files) }
  it { is_expected.to respond_to(:marketing) }
  it { is_expected.to respond_to(:o_auth) }
  it { is_expected.to respond_to(:webhooks) }
end
