post '/login/' do
#Validates username/password. Redirects to /decks if successful.
  redirect to '/decks/'
end

get '/users/:user_id/' do
#This is the 'profile' page. Displays history of rounds played.
end

get '/users/new/' do
  #New user page - form with name, password, email, etc.
  #'Save' POST to /users/create/
end

post '/users/create' do
  #Generates user from form input.
  #Sets user as logged in.
  #Redirects to 'select deck' /decks
end

get '/users/create' do
  #Generates user form for new user.
  erb :create_user
end

get '/users/logout/' do
  #Logs user out.
  #Redirects to 'login' /
end

get '/login/error/' do
  #Where you are redirected when POST /login route has problem with your info.
  #Takes your info as query string so we can display it + error
end

get '/signup/error/' do
  #Where you are redirected when POST /users/create route has problem with your info.
  #Takes your info as query string so we can display it + error
end
