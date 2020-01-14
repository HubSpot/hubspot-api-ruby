require 'rails_helper'

feature 'Deleting contact' do
  let(:email) { 'test_email@q.com' }

  scenario 'Visitor deletes contact' do
    login
    using_wait_time 10 do
      create_contact(email)
      expect(page).to have_css('.contacts td', text: email)
      find('.contacts .contact-email', text: email)
        .find(:xpath, 'ancestor::tr[@class="contact"]')
        .find('.delete-button').click

      expect(page).not_to have_css('.contacts td', text: email)
    end
  end
end