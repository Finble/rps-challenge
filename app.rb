require 'sinatra/base'

class RPS < Sinatra::Base
enable :sessions

	get '/' do
	  erb :index
	end

	post '/names' do
		session[:player_1_name] = params[:player_1_name]  #shouldn't render @player_1_name from post - need to save instance variable in a get
	  session[:player_2_name] = params[:player_2_name]  #shouldn't render @player_2_name from post - need to save instance variable in a get
	  redirect '/play'
	end

	get '/play' do
		@player_1_name = session[:player_1_name] 
		@player_2_name = session[:player_2_name]
		erb :play
	end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
