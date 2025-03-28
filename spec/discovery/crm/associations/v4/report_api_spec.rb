require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Associations::V4::ReportApi' do
  subject(:report_api) { Hubspot::Client.new(access_token: 'test').crm.associations.v4.report_api }

  it { is_expected.to respond_to(:request) }
end
