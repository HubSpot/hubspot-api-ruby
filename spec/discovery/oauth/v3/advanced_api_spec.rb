require 'spec_helper'

describe 'Hubspot::Discovery::Oauth::V3::AdvancedApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').oauth.v3.advanced_api }

  it { is_expected.to respond_to(:get_token) }
  it { is_expected.to respond_to(:introspect_token) }
  it { is_expected.to respond_to(:revoke_token) }

  describe 'response deserialization' do
    let(:api_client) { api.api.api_client }

    it 'builds an AccessTokenResponse from a token response' do
      data = { access_token: 'access', refresh_token: 'refresh', expires_in: 1800, token_type: 'bearer', token_use: 'access_token' }
      response = api_client.convert_to_type(data, 'TokenResponseIF')

      expect(response).to be_a(Hubspot::Oauth::V3::AccessTokenResponse)
      expect(response.refresh_token).to eq('refresh')
    end

    it 'builds a ClientCredentialsTokenResponse from a client credentials token response' do
      data = { access_token: 'access', expires_in: 1800, token_type: 'bearer', token_use: 'client_credentials' }
      response = api_client.convert_to_type(data, 'TokenResponseIF')

      expect(response).to be_a(Hubspot::Oauth::V3::ClientCredentialsTokenResponse)
    end

    it 'builds a PublicRefreshTokenInfoResponse from a refresh token introspection response' do
      data = { active: true, app_id: 1, client_id: 'client', hub_id: 2, scopes: ['oauth'], token: 'refresh', token_type: 'bearer', token_use: 'refresh_token', user_id: 3 }
      response = api_client.convert_to_type(data, 'TokenInfoResponseBaseIF')

      expect(response).to be_a(Hubspot::Oauth::V3::PublicRefreshTokenInfoResponse)
      expect(response.active).to be(true)
    end
  end
end
