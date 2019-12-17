require 'rails_helper'

feature 'Visitor visits root page' do
  scenario 'without HUBSPOT_CLIENT_ID and HUBSPOT_CLIENT_SECRET' do
    allow(ENV).to receive(:[])
    allow(ENV).to receive(:[]).with('HUBSPOT_CLIENT_ID').and_return(nil)
    allow(ENV).to receive(:[]).with('HUBSPOT_CLIENT_SECRET').and_return(nil)

    visit root_path
    expect(page).to have_content('Please specify HUBSPOT_CLIENT_ID and HUBSPOT_CLIENT_SECRET in .env')
  end

  scenario 'without creds in session' do
    visit root_path
    expect(page).to have_content('Please authorize via OAuth2')
  end

  scenario 'clicking on OAuth2' do
    Capybara.server_host = "localhost"
    Capybara.default_driver = :selenium

    visit root_path
    click_link 'OAuth2'
    using_wait_time 10 do
      find("input[id$='username']").fill_in with: ENV['HUBSPOT_EMAIL']
      find("input[id$='password']").fill_in with: ENV['HUBSPOT_PASSWORD']
      find("button[id$='loginBtn']").click
      find("a[href*=\"oauth/#{ENV['HUBSPOT_USER_ID']}/authorize\"]").first('span').click
      expect(page).to have_table(class: 'contacts')
    end
  end
end
