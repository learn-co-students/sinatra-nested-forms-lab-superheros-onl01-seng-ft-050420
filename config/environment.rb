ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

require './app/models/superhero'
require './app/models/team'
require './app/controllers/application_controller'
# require 'app/views/index.erb'
# require './app/views/super_hero'
# require './app/views/team'




