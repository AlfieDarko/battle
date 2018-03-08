require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    'Testing infrastructure working!'
    erb(:index)
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_1_name]), Player.new(params[:player_2_name]))
    redirect('/play')
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  get '/attackpage' do
    @game = $game
    @game.attack(@game.player2)
    erb(:attackpage)
  end

  run! if app_file == $PROGRAM_NAME
end
