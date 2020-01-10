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
    expect(page).to have_content('Please authorize via OAuth2')
  end

  scenario 'clicking on OAuth2 link' do
    Capybara.server_host = "localhost"
    Capybara.default_driver = :selenium

    visit root_path
    click_link 'OAuth2'
    using_wait_time 10 do
      find("input[id$='username']").fill_in with: ENV['HUBSPOT_EMAIL']
      find("input[id$='password']").fill_in with: ENV['HUBSPOT_PASSWORD']
      find("button[id$='loginBtn']").click
      find("a[href*=\"oauth/#{ENV['HUBSPOT_USER_ID']}/authorize\"]").first('span').click

      expect(page).to have_css('.contacts')
    end
  end
end

# feature 'Visitor uses form' do
#   let(:email) { "test_#{SecureRandom.hex(5)}@test.com" }

#   scenario 'create form and send file' do
#     visit '/form/new'
#     find('input[name="commit"]').click
#     expect(page).to have_css('.form-show')

#     visit '/form'
#     page.within_frame('hs-form-iframe-0') do
#       find("input[name='email']").fill_in with: email
#       find('input[type="file"]').attach_file('./public/sample.png')
#       find("input[type='submit']").click
#     end

#     sleep 10
#     refresh
#     expect(page).to have_css('td', text: email)
#     expect(page).to have_css('td.protected-file')

#     vid = first('td.contact-id').text
#     fake_hubspot_webhook('webhook', vid).send
#     refresh
#     public_file_text = find('td.contact-id', text: vid).find(:xpath, '..').find('td.public-file').text
#     expect(public_file_text).to eq('File')
#     visit '/form'
#     clear_hubspot_data(contact_id: vid, form_id: find('.form-show')['data-form-id'])
#   end
# end