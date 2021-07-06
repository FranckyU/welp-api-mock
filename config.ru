# frozen_string_literal: true

require 'rubygems'
require 'bundler'

Bundler.require

require 'sinatra/reloader'

loader = Zeitwerk::Loader.new
loader.push_dir("#{__dir__}/responses")
loader.setup

require './app'
run App

# run with `bundle exec rackup`
