require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base
    enable :sessions

    get '/' do
        erb(:index)
    end

    post '/names' do
        player_1 = Player.new(params[:Player_1_Name])
        player_2 = Player.new(params[:Player_2_Name])
        @game = Game.create(player_1, player_2)
        redirect to('/play')
    end 

    get '/play' do
        @game = Game.instance
        erb(:play)
    end

    before do
        @game = Game.instance
    end

    post '/attack_received' do
        @game.current_turn == @game.player_1 ? @game.attack(@game.player_2) : @game.attack(@game.player_1)        
        @game.switch_turn
        redirect '/attack'
    end

    get '/attack' do
        if @game.current_turn.points <= 0
            redirect '/game_over'
        end
        erb(:attack)
    end

    get '/game_over' do
        @game.switch_turn
        erb(:game_over)
    end

    run! if app_file == $0
end