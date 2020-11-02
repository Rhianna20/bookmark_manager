
# Sets the environment to test
ENV['RACK_ENV'] = 'test'
# Require '.app.rb' contents
require File.join(File.dirname(__FILE__), '..', 'app.rb')
# Testing gems
require 'capybara'
require 'capybara/rspec'
require 'rspec'

# Allows Capybara to communicate with BookManger

Capybara.app = BookmarkManager