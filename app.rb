  require 'bundler'
  Bundler.require()

#connection
ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :database => 'to_do_app'
)

require './models/todo'

#routes
#get \api\todos
get '/api/todos' do
  content_type :json
  To_do.all.to_json
end
# All todos
# get \api\todos\:id
get '/api/todos/:id' do
  content_type :json
  todo = To_do.find(params[:id].to_i)
  todo.to_json
end
# post \api\todos
# A specific todo
# Update an existing todo
post '/api/todos' do
  content_type :json
  todo = To_do.create(params[:todo])
  todo.to_json
end
# Create a new todo
# put \api\todos\:id
put '/api/todos/:id' do
  content_type :json
  todo = To_do.find(params[:id].to_i).update(params[:todo])
  todo.to_json
end
# Update an existing todo
# patch \api\todos\:id
patch '/api/todos/:id' do
  content_type :json
  todo = To_do.find(params[:id].to_i).update(params[:todo])
  todo.to_json
end
# delete \api\todos\:id
# Delete an existing todo
delete '/api/todos/:id' do
  content_type :json
  id = params[:id].to_i
  todo = To_do.destroy(id)
end
