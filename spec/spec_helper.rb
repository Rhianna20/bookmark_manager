require_relative './setup_test_database'
# Sets the environment to test
ENV['RACK_ENV'] = 'test'
ENV['ENVIRONMENT'] = 'test'

RSpec.configure do |config|
  config.before(:each) do
    setup_test_database
  end
end
# Require '.app.rb' content
require File.join(File.dirname(__FILE__), '..', 'app.rb')
# Testing gems
require 'capybara'
require 'capybara/rspec'
require 'rspec'

# Allows Capybara to communicate with BookManger

Capybara.app = BookmarkManager
