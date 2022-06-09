require 'spec_helper'

describe 'Hubspot::Marketing::Events::SearchApi' do
  subject(:api) { Hubspot::Marketing::Events::SearchApi.new }
  
  it { is_expected.to respond_to(:do_search) }
end
