require 'spec_helper'

describe 'Hubspot::Crm::Quotes::BasicApi' do
  subject(:basic_api) { Hubspot::Crm::Quotes::BasicApi.new }
  
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:get_page) }
end
