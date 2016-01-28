require 'spec_helper'
require 'capybara/rspec'
require 'capybara/dsl'
require 'capybara/poltergeist'

require File.expand_path('../../config/environment', __FILE__)
require 'capybara/rails'

ActiveRecord::Migration.check_pending!

RSpec.configure do |config|
  config.include Rails.application.routes.url_helpers
end