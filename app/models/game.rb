class Game < ApplicationRecord
  belongs_to :user
  has_many :multi_scores 
  has_many :game_letters
  has_many :letters, through: :game_letters 
end
