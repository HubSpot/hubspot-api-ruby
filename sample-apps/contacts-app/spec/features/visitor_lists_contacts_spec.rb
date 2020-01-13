require 'rails_helper'

feature 'Visitor lists contacts' do
  scenario 'after login' do
    login
    using_wait_time 10 do
      expect(page).to have_css('.contacts')
    end
  end
end