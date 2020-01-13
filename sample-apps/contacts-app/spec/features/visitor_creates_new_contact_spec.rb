require 'rails_helper'

feature 'Visitor creates new contact' do
  let(:email) { 'test_email@q.com' }
  let(:incorrect_email) { 'wrong_email.com' }

  scenario 'with correct data' do
    login
    using_wait_time 10 do
      create_contact(email)

      expect(page).to have_css('.contacts td', text: email)
      remove_test_contact(email)
    end
  end

  scenario 'with incorrect data' do
    login
    using_wait_time 10 do
      create_contact(incorrect_email)

      expect(page).to have_css('.error', text: 'Property values were not valid')
    end
  end
end