# Comments under the route represent the restful view file to serve

get '/users' do
  # /users/index
  "This route should return a list of all users"
end

get '/users/new' do
  erb :'/new.html'
end

post '/users' do
  @User.create(params[:user])
  if @User.save
    sessions[user_id] = @User.id
    redirect to '/questions'
  else
    #This is a terrible user experience, but in the scope of this project it's fine.
    redirect to '/users/new'
end

get '/users/:id' do
  # /users/show
  "This route should return a specific user"
end

get '/users/:id/edit' do
  # /users/edit
  "This route shows a form to edit user details"
end

put '/users/:id' do
  "This route edits user with data from edit form"
end

delete '/users/:id' do
  "This route allows a user to delete their own data from the db."
end