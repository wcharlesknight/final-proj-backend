class Player < ApplicationRecord
  belongs_to :user
  belongs_to :multi_game
  has_many :multi_scores  
end
