class Game < ApplicationRecord
  belongs_to :user
  belongs_to :score
  has_many :game_letters
  has_many :letters, through: :game_letters 
end
