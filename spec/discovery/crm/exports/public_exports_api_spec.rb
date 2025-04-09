require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Exports::PublicExportsApi' do
  subject(:PublicExportsApi) { Hubspot::Client.new(access_token: 'test').crm.exports.public_exports_api }
  
  it { is_expected.to respond_to(:get_status) }
  it { is_expected.to respond_to(:start) }
end
