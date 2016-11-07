get '/questions' do
  @questions = Question.all
  erb :'question/index.html'
end

get '/questions/new' do
  erb :'question/_new.html'
end

post '/questions' do
  p params
  @question = Question.new(params[:question])
  if @question.save
    redirect to "/questions/#{@question.id}"
  else
    p "We couldn't save your question at this moment."
    redirect to "/questions/new"
  end
end

get '/questions/:id' do
  "This shows a specific question – This is the real meat of the site."
end

get 'questions/:id/edit' do
  "This page allows a user to edit a question they've asked"
end

put 'questions/:id' do
  "This updates a question with form input"
end

delete 'questions/:id' do
  "This route deletes a question from the db"
end
