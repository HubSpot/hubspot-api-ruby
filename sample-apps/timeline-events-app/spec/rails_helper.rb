# This file is copied to spec/ when you run 'rails generate rspec:install'
require 'spec_helper'
ENV['RAILS_ENV'] ||= 'test'
RSPEC_ROOT = File.dirname(__FILE__)

require File.expand_path('../config/environment', __dir__)
abort("The Rails environment is running in production mode!") if Rails.env.production?

require 'rspec/rails'
require 'capybara/rspec'
require 'capybara/mechanize'

Dir["#{RSPEC_ROOT}/support/**/*.rb"].each { |f| require f }

begin
  ActiveRecord::Migration.maintain_test_schema!
rescue ActiveRecord::PendingMigrationError => e
  puts e.to_s.strip
  exit 1
end

RSpec.configure do |config|
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!
  config.use_transactional_fixtures = false

  config.include ApplicationHelper, DownloadHelper

  Capybara.register_driver :selenium do |app|
    profile = Selenium::WebDriver::Firefox::Profile.new
    profile['browser.download.dir'] = DownloadHelper::PATH.to_s
    profile['browser.download.folderList'] = 2

    # Suppress "open with" dialog
    profile['browser.helperApps.neverAsk.saveToDisk'] = 'text/csv'
    Capybara::Selenium::Driver.new(app, :browser => :firefox, :profile => profile)
  end

  config.before( :each ) do
      DownloadHelper::clear_downloads
  end
end
