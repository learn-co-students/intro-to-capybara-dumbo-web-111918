# Load RSpec and Capybara
require 'rspec'
require 'capybara/rspec' # for integration tests in rails and sinatra
require 'capybara/dsl'

# Configure RSpec
RSpec.configure do |config|
  # Mixin the Capybara functionality into Rspec
  config.include Capybara::DSL
  config.order = 'default'
end

# Define the application we're testing
def app
  # Load the application defined in config.ru
  Rack::Builder.parse_file('config.ru').first
end

# Configure Capybara to test against the application above.
Capybara.app = app # WE TELL CAPYBARA that the app we're testing against is defined in config.ru
