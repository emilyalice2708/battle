require 'sinatra/base'
require_relative 'player'

class Battle < Sinatra::Base
    enable :sessions

    get '/' do
        erb(:index)
    end

    post '/names' do
        $player_1 = Player.new(params[:Player_1_Name])
        $player_2 = Player.new(params[:Player_2_Name])
        redirect to('/play')
    end 

    get '/play' do
        @player_1 = $player_1
        @player_2 = $player_2
        @player_2_points = @player_2.points
        erb(:play)
    end

    post '/pointsMethod' do
        @player_1 = $player_1
        @player_2 = $player_2
        @player_1.attack(@player_2)
        @player_2_points = @player_2.points
        redirect '/attack'
    end

    get '/attack' do
        @player_1 = $player_1
        @player_2 = $player_2
        erb(:attack)
    end

    run! if app_file == $0
end