require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base
  enable :sessions
  game = Game.new
  get '/' do
    'Testing infrastructure working!'
    erb(:index)
  end

  post '/names' do
    p params
    # @player_1_name = params[:player_1_name]
    # @player_2_name = params[:player_2_name]
    session['player_1_name'] = params[:player_1_name]
    session['player_2_name'] = params[:player_2_name]

    $player1 = Player.new(params[:player_1_name])
    $player2 = Player.new(params[:player_2_name])

    redirect('/play')
  end

  get '/play' do
    @player_1_name = $player1.name
    @player_2_name = $player2.name
    game = Game.new
    erb(:play)
  end

  get '/attackpage' do
    game.attack($player2)
    @player_2_hp = $player2.hitpoints
    erb(:attackpage)
  end

  run! if app_file == $PROGRAM_NAME
end
