require 'sinatra/base'
# to run the app type : $ rerun -- rackup --port 4000 config.ru (for Windows)

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  ends
end
