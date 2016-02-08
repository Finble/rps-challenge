require 'sinatra/base'

class RPS < Sinatra::Base
enable :sessions

	get '/' do
	  erb :index
	end

	post '/names' do
		session[:markateer_name] = params[:markateer_name]  #shouldn't render @player_1_name from post - need to save instance variable in a session via a get request
	  # session[:player_2_name] = params[:player_2_name]  #as above
	  redirect '/play'
	end

	get '/play' do
		@markateer_name = session[:markateer_name] 
		# @player_2_name = session[:player_2_name]
		erb :play
	end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
