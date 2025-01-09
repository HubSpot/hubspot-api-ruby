require 'spec_helper'
require 'hubspot/helpers/requests/http_request_builder'

RSpec.describe Hubspot::Helpers::Request do
  let(:config_with_access_token) { { access_token: 'token_value', "base_url" => "https://api.hubapi.com" } }
  let(:config_with_api_key) { { api_key: 'api_key_value', "base_url" => "https://api.hubapi.com" } }
  let(:default_options) { { path: '/test', method: 'GET' } }
  let(:post_options) { { path: '/test', method: 'POST', body: { key: 'value' } } }

  describe '#initialize' do
    it 'sets default headers and URL' do
      request = described_class.new(config_with_access_token, default_options)
      expect(request.url).to eq('https://api.hubapi.com/test')
      expect(request.headers['Content-Type']).to eq('application/json')
    end
  end

  describe '#apply_auth' do
    it 'applies access_token authorization' do
      request = described_class.new(config_with_access_token, default_options)
      expect(request.headers['Authorization']).to eq('Bearer token_value')
    end

    it 'applies API key authorization' do
      request = described_class.new(config_with_api_key, default_options.merge(auth_type: :api_key, auth_value: 'api_key_value'))
      expect(request.url).to include('hapikey=api_key_value')
    end
  end

  describe '#generate_url' do
    it 'generates a valid URL with a query string' do
      options = default_options.merge(qs: { param1: 'value1', param2: 'value2' })
      request = described_class.new(config_with_access_token, options)
      expect(request.url).to eq('https://api.hubapi.com/test?param1=value1&param2=value2')
    end
  end

  describe '#set_body' do
    it 'sets JSON body for POST requests' do
      request = described_class.new(config_with_access_token, post_options)
      expect(request.body).to eq('{"key":"value"}')
    end

    it 'does not set body for GET requests' do
      request = described_class.new(config_with_access_token, default_options)
      expect(request.body).to be_nil
    end
  end

  describe '#send' do
    let(:response) { instance_double('Net::HTTPResponse', code: '200', body: '{"message":"success"}') }

    it 'sends a GET request successfully' do
      allow_any_instance_of(Net::HTTP).to receive(:request).and_return(response)
      request = described_class.new(config_with_access_token, default_options)
      result = request.send
      expect(result.body).to eq('{"message":"success"}')
    end

    it 'raises an error for unsupported HTTP methods' do
      options = default_options.merge(method: 'INVALID')
      expect { described_class.new(config_with_access_token, options).send }.to raise_error('Unsupported HTTP method: INVALID')
    end

    it 'raises an error for HTTP exceptions' do
        allow_any_instance_of(Net::HTTP).to receive(:request).and_raise(StandardError.new('network error'))
        request = described_class.new(config_with_access_token, default_options)
        expect { request.send }.to raise_error(StandardError, 'network error')
      end      
  end
end
