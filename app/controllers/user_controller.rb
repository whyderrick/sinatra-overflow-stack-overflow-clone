# Comments under the route represent the restful view file to serve

get '/users' do
  p session
  if logged_in?
    redirect to '/questions'
  else
    erb :"index.html"
  end
end

get '/users/new' do
  erb :"user/new.html"
end

post '/users' do
  @user = User.create(params[:user])
  if @user.save
    session[user_id] = @user.id
    redirect to '/questions'
  else
    #This is a terrible user experience, but in the scope of this project it's fine.
    redirect to '/users/new'
  end
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
