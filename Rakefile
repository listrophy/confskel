#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

begin
  require 'heroku_san/tasks'
rescue LoadError
  STDERR.puts "Run `rake gems:install` to install heroku_san"
end

Confskel::Application.load_tasks
