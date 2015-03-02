require 'sinatra'
require 'sinatra/reloader'
require 'HTTParty'
require 'json'
require 'sqlite3'
require_relative './lib/note'
require_relative './lib/piece'
require_relative './lib/user'

def pageLoad(page)
	content = ""
	File.open(page, "r") do |n|
		n.each_line do |line|
			content << line
		end
	end
	return content
end

get '/' do
	content = pageLoad("index.html")
	erb :index, locals: {content: content}
end

get '/:id' do
	page = "#{params[:id]}.html"
	content = pageLoad(page)
	erb :index, locals: {content: content}
end

get '/eartraining/:id' do
	page = "#{params[:id]}.html"
	content = pageLoad(page)
	erb :index, locals: {content: content}
end 

get '/eartraining/noterecog/:id' do
	page = "#{params[:id]}.html"
	content = pageLoad(page)
	erb :index, locals: {content: content}
end
