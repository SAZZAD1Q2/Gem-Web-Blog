# spec/rails_helper.rb

# Load the Rails environment
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../config/environment', __dir__)

# Load RSpec and other test-related gems
require 'rspec/rails'

# Add other configuration settings here if needed

# Set the spec type
RSpec.configure do |config|
  config.infer_spec_type_from_file_location!
  config.include Rails.application.routes.url_helpers
  # ...
end
