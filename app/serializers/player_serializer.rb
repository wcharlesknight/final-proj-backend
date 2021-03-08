class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_id, :multi_game_id
  has_many :multi_scores
end
