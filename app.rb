require 'sinatra'
require 'sinatra/activerecord'
require_relative './models/item'
require_relative './config/environments'

get '/' do
	@items = Item.all
	erb :index
end

get '/new' do
	erb :new_form
end

post '/new' do
	@item = Item.new(title: params[:title], desc: params[:desc])
	if @item.save
		redirect '/'
	else
		@errors = @item.errors.full_messages
		render '/new'
	end
end