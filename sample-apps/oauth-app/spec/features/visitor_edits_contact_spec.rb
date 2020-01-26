require 'rails_helper'

feature 'editing of contact' do
  let(:email) { 'test_email@q.com' }
  let(:new_email) { 'new_test_email@q.com' }
  let(:firstname) { 'test_firstname' }
  let(:lastname) { 'test_lastname' }

  before do
    login
    using_wait_time 10 do
      create_contact(email)
      find('.contacts .contact-email', text: email).click
    end
  end

  after do
    visit root_path
    remove_test_contact(email) if has_css?('.contacts .contact-email', text: email)
  end

  scenario 'edits email' do
    find("input[id$='contact_email']").fill_in with: new_email
    find("input[type='submit']").click
    expect(page).to have_css('.contacts .contact-email', text: new_email)
    remove_test_contact(new_email)
  end

  scenario 'edits name' do
    find("input[id$='contact_firstname']").fill_in with: firstname
    find("input[id$='contact_lastname']").fill_in with: lastname
    find("input[type='submit']").click
    expect(page).to have_css('.contacts .contact-fullname', text: [firstname, lastname].join(' '))
  end
end