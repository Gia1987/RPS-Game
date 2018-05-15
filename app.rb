require 'sinatra/base'

class RPS < Sinatra::Base

  get '/' do
    "Welcome to RPS Game!"
  end
end
