class User < ApplicationRecord
    has_secure_password
    has_many :games
    has_many :players, dependent: :destroy
    has_many :player_ranks
    has_many :ranks, through: :player_ranks 
end
