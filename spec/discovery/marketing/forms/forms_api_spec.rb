require 'spec_helper'

describe 'Hubspot::Discovery::Marketing::Forms::FormsApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').marketing.forms.forms_api }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:get_page) }
  it { is_expected.to respond_to(:replace) }
  it { is_expected.to respond_to(:update) }
end
