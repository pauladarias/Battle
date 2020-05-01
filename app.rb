require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:Player1_name])
    $player2 = Player.new(params[:Player2_name])
    redirect '/play'
  end

  get '/play' do
    @Player1_name = $player1.name
    @Player2_name = $player2.name
    erb(:play)
  end

  get '/attack' do
    @Player1_name = $player1.name
    @Player2_name = $player2.name
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
