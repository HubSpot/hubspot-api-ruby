require 'rails_helper'

feature 'Visitor logs in' do
  scenario 'without HUBSPOT_CLIENT_ID and HUBSPOT_CLIENT_SECRET' do
    allow(ENV).to receive(:[])
    allow(ENV).to receive(:[]).with('HUBSPOT_CLIENT_ID').and_return(nil)
    allow(ENV).to receive(:[]).with('HUBSPOT_CLIENT_SECRET').and_return(nil)

    visit root_path
    expect(page).to have_content('Please specify HUBSPOT_CLIENT_ID, HUBSPOT_CLIENT_SECRET in .env')
  end

  scenario 'without creds in session' do
    visit root_path
    expect(page).to have_content('In order to continue please authorize via OAuth')
  end

  scenario 'clicking on OAuth2 link' do
    login
    expect(page).to have_css('.contacts')
  end
end