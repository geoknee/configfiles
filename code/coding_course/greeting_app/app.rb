require 'sinatra'

get '/' do 
	"Hello"
end

	get '/:name' do 
		@name=params[:name]
		erb :personal_greeting
	end
