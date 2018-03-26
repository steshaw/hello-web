# myapp.rb
require 'sinatra'

set :logging, false

get '/' do
  'Hello world!'
end
