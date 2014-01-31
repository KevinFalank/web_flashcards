get '/round' do
  session[:deck_id] = params[:deck_id]
  session[:max_guess] = 5
  session[:guess_count] = 0
  session[:user_id] = 1 #temp
  session[:round_id] = Round.create(user_id: session[:user_id], deck_id: session[:deck_id]).id
  redirect '/round/question'
end


get '/round/question' do
  #max_guess is stored in cookie.
  #@card = Card.random based on current deck. Current deck is stored in cookie.
  #We also check guesses to make sure we don't repeat cards you have answere correctly.
  #Round_id is also stored in cookie, because it would be weird to expose via URL.
  #current_card_id is also stored in cookie so we know what answer to look up.
  #'submit guess' sends POST to /round/answer/ with your guess
  @user = User.find(session[:user_id])
  @deck = Deck.find(session[:deck_id])
  @card = get_next_random_card
  session[:card_id] = @card.id
  erb :question
end

post '/round/answer' do
  user_guess = params[:guess]
  card = Card.find(session[:card_id])
  correctness = check_guess(user_guess, card.answer)
  guess = Guess.create(card: card,
               round_id: session[:round_id],
               correctness: correctness)
  session[:guess_count] += 1
  redirect "/round/display_answer?guess_id=#{guess.id}"
end

get '/round/display_answer' do

  #Retrives your guess based on guess_id in query string.
  #Displays your guess, the answer, and correctness.
  #Check number of guesses made vs. max_guesses in round.
    #If done, render with 'done' link.
    #Else, render with 'next question' link.
end
