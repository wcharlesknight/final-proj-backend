class Rank < ApplicationRecord
    has_many :player_ranks
    has_many :users, through: :player_ranks
end
