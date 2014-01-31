get '/' do
  # This is the login page
  erb :index
end

post '/login/' do
#Validates username/password. Redirects to /decks if successful.
  redirect to '/decks/'
end

get '/decks/' do
#This page displays list of decks you can choose from.
end

get '/round/question/'
  #max_guess is stored in cookie.
  #@card = Card.random based on current deck. Current deck is stored in cookie.
  #We also check guesses to make sure we don't repeat cards you have answere correctly.
  #Round_id is also stored in cookie, because it would be weird to expose via URL.
  #current_card_id is also stored in cookie so we know what answer to look up.
  #'submit guess' sends POST to /round/answer/ with your guess
end

post '/round/answer/'
  #Post logs your guess and its correctness.
  #It then redirects to /round/display_answer/ with the guess_id stored in query string.

end

get '/round/display_answer/'
  #Retrives your guess based on guess_id in query string.
  #Displays your guess, the answer, and correctness.
  #Check number of guesses made vs. max_guesses in round.
    #If done, render with 'done' link.
    #Else, render with 'next question' link.
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





