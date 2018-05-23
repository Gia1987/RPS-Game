require 'sinatra/base'
require_relative './lib/pc_choice'
require_relative './lib/game'
# to run the app type : $ rerun -- rackup --port 4000 config.ru (for Windows)

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    session[:game] = Game.new
    session[:ai] = AI.new
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
    @game = session[:game]
    @ai = session[:ai]
    @name = session[:name]
    @shape = session[:shape]
    @AI_shape = @ai.move
    @result = @game.result(@shape, @AI_shape)
    @pc_score = @game.pc_score
    @player_score = @game.player_score
    erb(:game)
  end
end
