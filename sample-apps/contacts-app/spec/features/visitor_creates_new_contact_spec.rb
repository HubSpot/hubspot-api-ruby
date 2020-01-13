require 'rails_helper'

feature 'Visitor creates new contact' do
  let(:email) { 'test_email@q.com' }
  let(:incorrect_email) { 'wrong_email.com' }

  scenario 'with correct data' do
    login
    using_wait_time 10 do
      find("a[id$='new-contact']").click
      find("input[id$='email']").fill_in with: email
      find("input[type='submit']").click

      expect(page).to have_css('.contacts td', text: email)
      id = find('.contacts .contact-email', text: email).find(:xpath, 'ancestor::tr[@class="contact"]').find('.contact-id').text
      remove_test_contact(id)
    end
  end

  scenario 'with incorrect data' do
    login
    using_wait_time 10 do
      find("a[id$='new-contact']").click
      find("input[id$='email']").fill_in with: incorrect_email
      find("input[type='submit']").click

      expect(page).to have_css('.error', text: 'Property values were not valid')
    end
  end
end