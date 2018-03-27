# myapp.rb
require 'sinatra'

set :logging, false

get '/' do
  'Hello world!'
end

#
# Install rbenv:
#
# $ brew install rbenv
#
# Install ruby 2.5.0:
#
# $ rbenv install
#
# Get Bundler:
#
# $ gem install bundler
#
# Install gems:
#
# $ bundle install
#
# Run:
#
# $ ruby hello.rb
#
