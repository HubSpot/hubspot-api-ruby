require 'spec_helper'

describe 'Hubspot::Marketing::Forms::HubSpotFormDefinition' do
  # Instantiating the codegen api installs the const_get hook that lazily
  # requires model files, mirroring how deserialization resolves constants.
  before { Hubspot::Client.new(access_token: 'test').marketing.forms.forms_api.api }

  let(:payload) do
    {
      id: '0d22e093-3b4f-4a4f-a5b8-3f4f6f5b8c01',
      name: 'Contact Us',
      formType: 'hubspot',
      archived: false,
      legalConsentOptions: { type: 'none' }
    }
  end

  it 'deserializes a form with legalConsentOptions' do
    form = Hubspot::Marketing::Forms.const_get(:HubSpotFormDefinition).build_from_hash(payload)

    expect(form.name).to eq('Contact Us')
    expect(form.legal_consent_options).to be_a(Hubspot::Marketing::Forms.const_get(:LegalConsentOptionsNone))
    expect(form.legal_consent_options.type).to eq('none')
  end
end
