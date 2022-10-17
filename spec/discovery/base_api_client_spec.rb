require 'spec_helper'
require 'hubspot/discovery/base_api_client'
require 'hubspot/configuration'

describe 'Hubspot::Discovery::BaseApiClient' do
  class Hubspot::Discovery::SomeApiClass
    include Hubspot::Discovery::BaseApiClient

    def require_codegen(path)
      path
    end
  end

  class Hubspot::SomeApiClass
    def initialize(api_client)
    end

    def get(test_id, opts = {})
      "got test_id: #{test_id}, opts: #{opts}"
    end

    def get_with_http_info
    end

    def update(test_id, simple_public_object_input, opts = {})
      "updated test_id: #{test_id}, name: #{simple_public_object_input.name}, email: #{simple_public_object_input.email}, opts: #{opts}"
    end

    def update_with_http_info
    end

    def raise_error
      raise Hubspot::ApiError
    end

    def raise_error_with_http_info
    end

    def raise_error_on_third_call
      @calls_count ||= 0
      @calls_count += 1
      raise Hubspot::ApiError if @calls_count < 3
      'ok'
    end

    def raise_error_on_third_call_with_http_info
    end
  end

  class Hubspot::ApiClient
    def initialize(config)
    end
  end

  class Hubspot::ApiError < ::StandardError
    def message
      'test error'
    end

    def code
      429
    end
  end

  class Hubspot::SimplePublicObjectInput
    attr_reader :name, :email

    def initialize(params)
      @name = params[:name]
      @email = params[:email]
    end

    def self.build_from_hash(params)
      new(params)
    end
  end

  subject(:client) { Hubspot::Discovery::SomeApiClass.new(access_token: 'test') }
  let(:api) { client.api }
  let(:body) { {name: 'test_name', email: 'test_email'} }
  
  it { is_expected.to respond_to(:get) }
  it { is_expected.to respond_to(:update) }
  it { is_expected.to respond_to(:get_with_http_info) }
  it { is_expected.to respond_to(:update_with_http_info) }

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

    context 'with error handle block' do
      subject(:get) { client.get(params) { |e| e.message } }
      let(:params) { {test_id: 'test_id_value', limit: 10} }

      it { is_expected.to eq('got test_id: test_id_value, opts: {:auth_names=>"oauth2", :limit=>10}') }
    end
  end
  
  describe '#update' do
    subject(:update) { client.update(params) }

    context 'with default params order' do
      let(:params) { {test_id: 'test_id_value', simple_public_object_input: Hubspot::SimplePublicObjectInput.new(body), limit: 10} }

      it { is_expected.to eq('updated test_id: test_id_value, name: test_name, email: test_email, opts: {:auth_names=>"oauth2", :limit=>10}') }
    end

    context 'with reversed params order' do
      let(:params) { {limit: 5, simple_public_object_input: Hubspot::SimplePublicObjectInput.new(body), test_id: 'test_id_value'} }
      
      it { is_expected.to eq('updated test_id: test_id_value, name: test_name, email: test_email, opts: {:auth_names=>"oauth2", :limit=>5}') }
    end

    context 'with shuffled params order' do
      let(:params) { {simple_public_object_input: Hubspot::SimplePublicObjectInput.new(body), limit: 7, test_id: 'test_id_value'} }
      
      it { is_expected.to eq('updated test_id: test_id_value, name: test_name, email: test_email, opts: {:auth_names=>"oauth2", :limit=>7}') }
    end

    context 'with body' do
      let(:params) { {test_id: 'test_id_value', body: body, limit: 10} }

      it { is_expected.to eq('updated test_id: test_id_value, name: test_name, email: test_email, opts: {:auth_names=>"oauth2", :limit=>10}') }
    end

    context 'with block' do
      subject(:update) { client.update(params) { |e| e.message } }
      let(:params) { {test_id: 'test_id_value', body: body, limit: 10} }

      it { is_expected.to eq('updated test_id: test_id_value, name: test_name, email: test_email, opts: {:auth_names=>"oauth2", :limit=>10}') }
    end
  end

  describe '#raise_error' do
    subject(:raise_error) { client.raise_error { |e| e.message } }

    it { is_expected.to eq('test error') }
  end

  describe '#raise_error_on_third_call' do
    subject(:raise_error_on_third_call) { client.raise_error_on_third_call(retry: retry_config) }

    context 'with 2 retries' do
      let(:retry_config) { {429 => { max_retries: 2 }} }

      it { is_expected.to eq('ok') }

      context 'with range config' do
        let(:retry_config) { {429..442 => { max_retries: 2 }} }

        it { is_expected.to eq('ok') }
      end
    end

    context 'with 1 retry' do
      let(:retry_config) { {429 => { max_retries: 1 }} }

      it { is_expected.to have_attributes(code: 429, message: 'test error') }
    end
  end
end
