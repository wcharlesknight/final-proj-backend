class GameSerializer < ActiveModel::Serializer
  attributes :id
  has_many :multi_scores
end
