get '/questions' do
  "This is the page for all of the questions that exist on Ontogolically Speaking"
end

get '/questions/new' do
  "This page has a form to create new questions"
end

post '/questions/new' do
  "This page creates a new question with information from the poster"
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
