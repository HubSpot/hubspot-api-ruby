require 'spec_helper'
require 'hubspot/helpers/requests/http_auth'

RSpec.describe Hubspot::Helpers::Auth do
    let(:config_with_api_key) { { api_key: 'api_key_value' } }
    let(:config_with_access_token) { { access_token: 'token_value' } }
    let(:config_empty) { {} }

  describe '.get_auth_types' do
    it 'returns an array of supported auth types' do
      expect(described_class.get_auth_types).to eq([:access_token, :api_key])
    end
  end

  describe '.has_auth_value?' do
    it 'returns true if the key has a value' do
      expect(described_class.has_auth_value?(config_with_api_key, :api_key)).to be true
      expect(described_class.has_auth_value?(config_with_access_token, :access_token)).to be true
    end

    it 'returns false if the key has no value or is nil' do
      expect(described_class.has_auth_value?(config_empty, :access_token)).to be false
      expect(described_class.has_auth_value?(config_empty, :api_key)).to be false
    end
  end

  describe '.choose_auth' do
    context 'when auth_type is specified in options' do
      it 'returns the specified auth type' do
        options = { auth_type: :api_key }
        result = described_class.choose_auth(config_with_access_token, options)
        expect(result).to eq({ auth_type: :api_key })
      end
    end

    context 'when auth_type is not specified in options' do
      it 'chooses the first valid auth type from the config' do
        options = {}
        result = described_class.choose_auth(config_with_access_token, options)
        expect(result).to eq({ auth_type: :access_token })
      end
    end

    context 'when no valid auth type is found in config' do
      it 'raises an error' do
        options = {}
        expect { described_class.choose_auth(config_empty, options) }.to raise_error("Unsupported auth_type: ")
      end
    end

    context 'when auth_type is invalid' do
      it 'raises an error for unsupported auth types' do
        options = { auth_type: :unsupported_type }
        expect { described_class.choose_auth(config_with_access_token, options) }.to raise_error("Unsupported auth_type: unsupported_type")
      end
    end
  end
end
