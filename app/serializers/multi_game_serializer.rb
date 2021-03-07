class MultiGameSerializer < ActiveModel::Serializer
  attributes :id, :result
  has_many :multi_scores
  # has_many :players 
end
