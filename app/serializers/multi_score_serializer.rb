class MultiScoreSerializer < ActiveModel::Serializer
  attributes :id, :multi_game_id, :points, :player_id, :player_name
end
