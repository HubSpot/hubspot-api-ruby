require 'spec_helper'

describe 'Hubspot::Client' do
  subject(:client) { Hubspot::Client.new(access_token: 'test').crm }
  
  it { is_expected.to respond_to(:associations) }
  it { is_expected.to respond_to(:companies) }
  it { is_expected.to respond_to(:contacts) }
  it { is_expected.to respond_to(:deals) }
  it { is_expected.to respond_to(:extensions) }
  it { is_expected.to respond_to(:imports) }
  it { is_expected.to respond_to(:line_items) }
  it { is_expected.to respond_to(:objects) }
  it { is_expected.to respond_to(:owners) }
  it { is_expected.to respond_to(:pipelines) }
  it { is_expected.to respond_to(:products) }
  it { is_expected.to respond_to(:quotes) }
  it { is_expected.to respond_to(:schemas) }
  it { is_expected.to respond_to(:tickets) }
  it { is_expected.to respond_to(:timeline) }
end
