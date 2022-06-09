require 'spec_helper'

describe 'Hubspot::Marketing::Events::BatchApi' do
  subject(:api) { Hubspot::Marketing::Events::BatchApi.new }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:do_upsert) }
end
