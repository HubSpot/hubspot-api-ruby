require 'spec_helper'

describe 'Hubspot::Discovery::Settings::BusinessUnits::BusinessUnitApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').settings.business_units.business_unit_api }
  
  it { is_expected.to respond_to(:get_by_user_id) }
end
