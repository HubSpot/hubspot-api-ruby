module ApplicationHelper
  def login
    Capybara.server_host = "localhost"
    Capybara.default_driver = :selenium

    visit root_path
    click_link 'OAuth2'
    using_wait_time 10 do
      unless has_css?("a[href*=\"oauth/#{ENV['HUBSPOT_USER_ID']}/authorize\"]")
        find("input[id$='username']").fill_in with: ENV['HUBSPOT_EMAIL']
        find("input[id$='password']").fill_in with: ENV['HUBSPOT_PASSWORD']
        find("button[id$='loginBtn']").click
      end

      find("a[href*=\"oauth/#{ENV['HUBSPOT_USER_ID']}/authorize\"]").first('span').click
    end
  end

  def remove_test_contact(email)
    id = find('.contacts .contact-email', text: email).find(:xpath, 'ancestor::tr[@class="contact"]').find('.contact-id').text
    Services::Hubspot::Contacts::Destroy.new(id).call
  end

  def create_contact(email)
    find("a[id$='new-contact']").click
    find("input[id$='email']").fill_in with: email
    find("input[type='submit']").click
  end
end