require 'sinatra'
require 'sinatra/reloader'

@@todos = ["mow the lawn", "walk the dog"]

get '/' do 
	erb :todos, locals: {
		todo_list: @@todos
	}
end

post '/add' do
	@@todos << params[:todo]	
	redirect to ('/')
end


post '/remove/:i' do
	@@todos.delete_at (params[:i].to_i)
	redirect to ('/')
end