require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Lists::MappingApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').crm.lists.mapping_api }
  
  it { is_expected.to respond_to(:translate_legacy_list_id_to_list_id) }
  it { is_expected.to respond_to(:translate_legacy_list_id_to_list_id_batch) }
end
