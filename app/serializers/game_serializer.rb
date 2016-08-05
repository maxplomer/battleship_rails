class GameSerializer < ActiveModel::Serializer
  attributes :id, :finished, :player_won

  has_many :tiles
end
