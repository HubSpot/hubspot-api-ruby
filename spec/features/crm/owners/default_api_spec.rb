require 'spec_helper'

describe 'Hubspot::Crm::Owners::DefaultApi' do
  subject(:default_api) { Hubspot::Crm::Owners::DefaultApi.new }
  
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:get_page) }
end
