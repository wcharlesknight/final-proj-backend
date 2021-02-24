class Letter < ApplicationRecord
    has_many :game_letters
    has_many :games, through: :game_letters
end
