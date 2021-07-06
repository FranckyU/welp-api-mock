require 'rubygems'
require 'bundler'

Bundler.require

require "sinatra/reloader"

require './app'
run App

# run with `bundle exec rackup`
