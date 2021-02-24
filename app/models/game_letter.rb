class GameLetter < ApplicationRecord
  belongs_to :game
  belongs_to :letter
end
