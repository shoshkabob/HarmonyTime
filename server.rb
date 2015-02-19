require 'sinatra'
require 'HTTParty'

get '/' do
	erb :index
end

get '/eartraining' do
	erb :eartraining
end

get '/harmony' do
	erb :harmony
end
