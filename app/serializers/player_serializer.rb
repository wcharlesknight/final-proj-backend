class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_id, :multi_game_id
end
