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
end
