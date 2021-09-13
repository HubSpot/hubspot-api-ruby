require 'spec_helper'

describe 'Hubspot::Crm::Owners::OwnersApi' do
  subject(:api) { Hubspot::Crm::Owners::OwnersApi.new }
  
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:get_page) }
end
