require File.join(File.dirname(__FILE__), '..', 'app.rb')

require 'sinatra'
require 'rack/test'

set :environment, :test
set :run, false
set :raise_errors, true
set :logging, false

def app
  Sinatra::Application
end

Rspec.configure do |config|
  config.include Rack::Test::Methods
  config.mock_with :rspec
  config.color_enabled = true
  config.tty = true
  config.formatter = :documentation
end
