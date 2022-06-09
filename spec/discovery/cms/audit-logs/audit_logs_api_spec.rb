require 'spec_helper'

describe 'Hubspot::Discovery::Cms::AuditLogs::AuditLogsApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').cms.audit_logs.audit_logs_api }
  
  it { is_expected.to respond_to(:get_page) }
end
