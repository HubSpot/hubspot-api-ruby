require 'spec_helper'

describe 'Hubspot::Client' do
  subject(:client) { Hubspot::Client.new(access_token: 'test').cms }
  
  it { is_expected.to respond_to(:audit_logs) }
  it { is_expected.to respond_to(:blogs) }
  it { is_expected.to respond_to(:domains) }
  it { is_expected.to respond_to(:hubdb) }
  it { is_expected.to respond_to(:pages) }
  it { is_expected.to respond_to(:performance) }
  it { is_expected.to respond_to(:site_search) }
  it { is_expected.to respond_to(:url_redirects) }
end
