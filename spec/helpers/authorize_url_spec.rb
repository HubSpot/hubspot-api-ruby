require 'uri'
require 'rspec'

require_relative "../../lib/hubspot/oauth_helper"

describe 'get_auth_url' do
  AUTHORIZE_URL = 'https://app.hubspot.com/oauth/authorize'

  let(:data) do
    {
      client_id: 'client_id',
      redirect_uri: 'http://localhost',
      scope: ['contacts', 'timeline'],
      optional_scope: ['scope1', 'scope3']
    }
  end

  it 'returns the correct URL with empty scope' do
    expected_params = {
      client_id: data[:client_id],
      redirect_uri: data[:redirect_uri]
    }
    expected_url = "#{AUTHORIZE_URL}?#{URI.encode_www_form(expected_params)}"

    result = Hubspot::OAuthHelper.authorize_url(data[:client_id], data[:redirect_uri])

    expect(result).to eq(expected_url)
  end

  it 'returns the correct URL with scope' do
    expected_params = {
      client_id: data[:client_id],
      redirect_uri: data[:redirect_uri],
      scope: data[:scope].join(' ')
    }
    expected_url = "#{AUTHORIZE_URL}?#{URI.encode_www_form(expected_params)}"

    result = Hubspot::OAuthHelper.authorize_url(data[:client_id], data[:redirect_uri], data[:scope])

    expect(result).to eq(expected_url)
  end

  it 'returns the correct URL with optional_scope' do
    expected_params = {
      client_id: data[:client_id],
      redirect_uri: data[:redirect_uri],
      scope: data[:optional_scope].join(' ')
    }
    expected_url = "#{AUTHORIZE_URL}?#{URI.encode_www_form(expected_params)}"

    result = Hubspot::OAuthHelper.authorize_url(data[:client_id], data[:redirect_uri], data[:optional_scope])

    expect(result).to eq(expected_url)
  end
end