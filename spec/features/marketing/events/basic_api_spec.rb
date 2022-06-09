require 'spec_helper'

describe 'Hubspot::Marketing::Events::BasicApi' do
  subject(:api) { Hubspot::Marketing::Events::BasicApi.new }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:do_cancel) }
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:replace) }
  it { is_expected.to respond_to(:update) }
end
