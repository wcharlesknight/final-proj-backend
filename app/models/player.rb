class Player < ApplicationRecord
  belongs_to :user
  belongs_to :multi_game
end
