class Card < ActiveRecord::Base
  validates :question, length: {maximum: 500}
  validates :answer, length: {maximum: 500}
  has_many :guesses
  belongs_to :deck
end
