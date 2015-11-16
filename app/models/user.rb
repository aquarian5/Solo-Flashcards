class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :guesses, through: :rounds
  has_many :decks, through: :rounds
  has_many :rounds

end
