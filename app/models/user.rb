class User < ActiveRecord::Base
  validates :user_name, presence: true
  validates :password, presence: true
  has_many :rounds
  has_many :guesses, through: :rounds
end
