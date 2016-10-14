require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'


class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
  	$player_2 = Player.new(params[:player_2_name])
  	redirect '/play'
  end

  get '/play' do
    $game = Game.new($player_1, $player_2)
  	@player_1_name = $game.player_1.name
  	@player_2_name = $game.player_2.name
    @player_1_hp = $game.player_1.hit_points
    @player_2_hp = $game.player_2.hit_points
  	erb(:play)
  end

  get '/attack' do
    if params[:player2]
      $game.player_2_attack
      @current_player = $game.player_1
    else
      $game.player_1_attack
      @current_player = $game.player_2
    end
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
