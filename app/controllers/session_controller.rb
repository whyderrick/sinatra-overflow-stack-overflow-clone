get '/sessions/new' do
  # sessions[user_id] = @User.id
  "This route processes login and adds user_id to the sessions hash"
end

delete '/sessions' do
  # sessions[user_id] = nil
  "Processes logout for the current user."
end
