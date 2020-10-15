require 'sinatra/base'
require_relative 'player'

class Battle < Sinatra::Base
    enable :sessions

    get '/' do
        erb(:index)
    end

    post '/names' do
        player_1 = Player.new(params[:Player_1_Name])
        player_2 = Player.new(params[:Player_2_Name])
        $game = Game.new(player_1, player_2)
        redirect to('/play')
    end 

    get '/play' do
        @game = $game
        erb(:play)
    end

    post '/attack_received' do
        @game = $game
        @game.attack(@game.player_2)
        redirect '/attack'
    end

    get '/attack' do
        @game = $game
        erb(:attack)
    end

    run! if app_file == $0
end