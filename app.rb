require 'sinatra/base'
require_relative './lib/pc_choice'
require_relative './lib/result'
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
    @name = session[:name]
    @shape = session[:shape]
    @AI_shape = AI.move
    @result = Game.result(@shape, @AI_shape)
    erb(:game)
  end
end
