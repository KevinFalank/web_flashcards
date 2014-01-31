get '/decks/' do
  #This page displays list of decks you can choose from.
  @decks = Deck.all
  erb :decks
end

get '/decks/:deck_id' do
end
