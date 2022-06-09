require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Imports::PublicImportsApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').crm.imports.public_imports_api }
  
  it { is_expected.to respond_to(:get_errors) }
end
