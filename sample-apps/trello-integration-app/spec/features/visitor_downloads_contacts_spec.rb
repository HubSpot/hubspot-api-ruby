require 'rails_helper'

feature 'Downloading CSV' do
  let(:email) { 'test_email@q.com' }

  before do
    login
    using_wait_time 10 do
      create_contact(email)
    end
  end

  after do
    remove_test_contact(email)
  end

  scenario 'visitor downloads csv' do
    click_on('Export To CSV')
    expect( DownloadHelper::download_content ).to include(email)
  end
end