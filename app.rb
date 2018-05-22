require 'sinatra/base'
# to run the app type : $ rerun -- rackup --port 4000 config.ru (for Windows)

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post'/sign_in' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    erb(:play)
  end

  post'/chosing' do
   session[:shape] = params[:shape]
   redirect '/game'
  end

  get '/game' do
    @shape = session[:shape]
    @name = session[:name]
    erb(:game)
  end
end
