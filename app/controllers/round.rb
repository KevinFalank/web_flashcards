get '/round' do
end


get '/round/question/' do
  #max_guess is stored in cookie.
  #@card = Card.random based on current deck. Current deck is stored in cookie.
  #We also check guesses to make sure we don't repeat cards you have answere correctly.
  #Round_id is also stored in cookie, because it would be weird to expose via URL.
  #current_card_id is also stored in cookie so we know what answer to look up.
  #'submit guess' sends POST to /round/answer/ with your guess
end

post '/round/answer/' do
  #Post logs your guess and its correctness.
  #It then redirects to /round/display_answer/ with the guess_id stored in query string.

end

get '/round/display_answer/' do
  #Retrives your guess based on guess_id in query string.
  #Displays your guess, the answer, and correctness.
  #Check number of guesses made vs. max_guesses in round.
    #If done, render with 'done' link.
    #Else, render with 'next question' link.
end
