require 'spec_helper'

describe 'Hubspot::Discovery::BaseApiClient' do
  class Hubspot::Discovery::SomeApiClass
    include Hubspot::Discovery::BaseApiClient
  end

  class Hubspot::SomeApiClass
    def get(test_id, opts = {})
      "got test_id: #{test_id}, opts: #{opts}"
    end

    def get_with_http_info
    end

    def update(test_id, simple_public_object_input, opts = {})
      "updated test_id: #{test_id}, simple_public_object_input: #{simple_public_object_input}, opts: #{opts}"
    end

    def update_with_http_info
    end
  end

  subject(:client) { Hubspot::Discovery::SomeApiClass.new(access_token: 'test') }
  let(:api) { client.api }
  
  it { is_expected.to respond_to(:get) }
  it { is_expected.to respond_to(:update) }
  it { is_expected.not_to respond_to(:get_with_http_info) }
  it { is_expected.not_to respond_to(:update_with_http_info) }

  describe '#get' do
    subject(:get) { client.get(params) }

    context 'with default params order' do
      let(:params) { {test_id: 'test_id_value', limit: 10} }

      it { is_expected.to eq('got test_id: test_id_value, opts: {:auth_names=>"oauth2", :limit=>10}') }
    end

    context 'with changed params order' do
      let(:params) { {limit: 5, test_id: 'test_id_value'} }

      it { is_expected.to eq('got test_id: test_id_value, opts: {:auth_names=>"oauth2", :limit=>5}') }
    end
  end
  
  describe '#update' do
    subject(:update) { client.update(params) }

    context 'with default params order' do
      let(:params) { {test_id: 'test_id_value', simple_public_object_input: 'simple_public_object_input_value', limit: 10} }

      it { is_expected.to eq('updated test_id: test_id_value, simple_public_object_input: simple_public_object_input_value, opts: {:auth_names=>"oauth2", :limit=>10}') }
    end

    context 'with reversed params order' do
      let(:params) { {limit: 5, simple_public_object_input: 'simple_public_object_input_value', test_id: 'test_id_value'} }
      
      it { is_expected.to eq('updated test_id: test_id_value, simple_public_object_input: simple_public_object_input_value, opts: {:auth_names=>"oauth2", :limit=>5}') }
    end

    context 'with shuffled params order' do
      let(:params) { {simple_public_object_input: 'simple_public_object_input_value', limit: 7, test_id: 'test_id_value'} }
      
      it { is_expected.to eq('updated test_id: test_id_value, simple_public_object_input: simple_public_object_input_value, opts: {:auth_names=>"oauth2", :limit=>7}') }
    end
  end
end
