class PlayerRank < ApplicationRecord
  belongs_to :rank
  belongs_to :user
end
