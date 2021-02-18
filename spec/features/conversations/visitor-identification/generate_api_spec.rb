require 'spec_helper'

describe 'Hubspot::Conversations::VisitorIdentification::GenerateApi' do
  subject(:api) { Hubspot::Conversations::VisitorIdentification::GenerateApi.new }
  
  it { is_expected.to respond_to(:generate_token) }
end
