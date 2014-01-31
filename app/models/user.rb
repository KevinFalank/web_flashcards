class User < ActiveRecord::Base
  validates :user_name, presence: true
  validates :password, presence: true
  has_many :rounds
  has_many :guesses, through: :rounds

  def self.login(login_data)

    user = User.find_by(user_name: login_data[:user_name])
    return 0 if user.nil?
    if user.password == login_data[:password]
      return user.id
    else
      return 0
    end
  end

  def self.get_rounds_by_user(user_id)
    rounds = Round.where(user_id: user_id)
    i = 0
    user_data = []
    user = User.find(user_id)
    rounds.each do |round|
      i += 1
      guesses = Guess.where(round: round)
      total_guesses = guesses.size
      distinct_number_of_cards = guesses.select(:card_id).distinct.size
      correct_guesses = guesses.where(correctness: 1).count
      percentage_correct = (correct_guesses.to_f/total_guesses) * 100
      user_data << {round: i, deck: round.deck.name, name: user.name, total_guesses: total_guesses, correct_guesses: correct_guesses, percentage_correct: percentage_correct}
    end

    user_data
  end

end

