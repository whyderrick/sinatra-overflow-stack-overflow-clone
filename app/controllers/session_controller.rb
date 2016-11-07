get '/login' do
  if logged_in?
    redirect to '/questions'
  else
    @user = params[:user] || User.new
    erb :'_login.html'
  end
end

get '/logout' do
  erb :'logout.html'
end

post '/sessions' do
  @user = User.find_by_email(params[:user][:email])
  @user ||= User.new
  if @user.authenticate(params[:user][:password])
    session[:user_id] = @user.id
    redirect to '/questions'
  else
    erb :'_login.html'
  end
end

get '/sessions/new' do
  # sessions[user_id] = @User.id
  "This route processes login and adds user_id to the sessions hash"
end

delete '/sessions' do
  session[:user_id] = nil
  redirect to '/login'
end
