helpers do
  def get_next_random_card
    cards = Round.find(session[:round_id]).deck.cards
    good_cards = cards.select do |card|
      Guess.where(round_id: session[:round_id], card: card, correctness: 1).empty?
    end
    good_cards.sample
  end

  def check_guess(guess, answer)
    (guess.downcase.chomp == answer.downcase.chomp) ? 1 : 0
  end

  def round_over?
    if session[:guess_count] >= session[:max_guess]
      true
    else
      round = Round.find(session[:round_id])
      all_cards_answered_correctly?(round)
    end
  end

  def all_cards_answered_correctly?(round)
    round.deck.cards.all? do |card|
      Guess.find_by(round: round, card: card, correctness: 1)
    end
  end
end
