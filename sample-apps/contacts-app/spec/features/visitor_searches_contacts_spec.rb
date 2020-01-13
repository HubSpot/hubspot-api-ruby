require 'rails_helper'

feature 'Visitor searches contacts' do
  let(:email) { 'test_email@q.com' }
  let(:wrong_email) { 'wrong_email.com' }

  scenario 'with correct query' do
    login
    using_wait_time 10 do
      create_contact(email)
      find("input[id$='search']").set(email).native.send_keys(:return)
      expect(page).to have_css('.contacts td', text: email)
      remove_test_contact(email)
    end
  end

  scenario 'with correct query' do
    login
    using_wait_time 10 do
      create_contact(email)
      search_input = find("input[id$='search']")
      search_input.set(wrong_email).native.send_keys(:return)
      expect(page).not_to have_css('.contacts td', text: email)
      search_input.set('').native.send_keys(:return)
      remove_test_contact(email)
    end
  end
end