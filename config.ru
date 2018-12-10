# Write your code here!
require 'sinatra'
require_relative './app'

run Application


# in a basic app like this, config.ru will require:
# - sinatra gem
# - relative of file required app.rb which defines main Application controller
# - Lastly, we run Application controller to start web app

# shotgun will look for a config.ru file if none is specified
