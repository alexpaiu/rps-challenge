require 'sinatra'
require_relative 'players'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  get '/game' do
    erb :gameselect
  end

  get '/singleplayer' do
    erb :singleplayer
  end

  post '/singleplayer' do
    session[:player1] = params[:player1]
    redirect '/play'
  end

  get '/multiplayer' do
    erb :multiplayer
  end

  post '/multiplayer' do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect '/multiplay'
  end

  get '/play' do
    @player1 = session[:player1]
    erb :play
  end

  get '/multiplay' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb :multiplay
  end
  run! if app_file == $0
end
