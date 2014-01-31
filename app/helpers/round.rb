helpers do
  def get_next_random_card
    cards = Round.find(session[:round_id]).deck.cards
    good_cards = cards.select do |card|
      Guess.where(round_id: session[:round_id], card: card, correctness: 1).empty?
    end
    good_cards.sample
  end
end
