post '/login' do
#Validates username/password. Redirects to /decks if successful.
  # params[:login].inspect
  user_id = User.login(params[:login])
  if user_id > 0
    session[:user_id] = user_id
    redirect to '/decks'
  else
    redirect "/"
  end
end

get '/users/:user_id' do
  erb :profile
#This is the 'profile' page. Displays history of rounds played.
end


post '/users/create' do
  #Generates user from form input.
  #Sets user as logged in.
  #Redirects to 'select deck' /decks
  new_user = params[:new_user]
  user = User.create(user_name: new_user[:user_name], password: new_user[:password], email: new_user[:email], name: new_user[:name])
  session[:user_id] = user.id
  redirect to '/decks'
end

get '/users/create' do
  #Generates user form for new user.
  erb :create_user
end

get '/users/logout' do
  #Logs user out.
  #Redirects to 'login' /
  session[:user_id] = 0
end

get '/login/error' do
  #Where you are redirected when POST /login route has problem with your info.
  #Takes your info as query string so we can display it + error
end

get '/signup/error' do
  #Where you are redirected when POST /users/create route has problem with your info.
  #Takes your info as query string so we can display it + error
end
