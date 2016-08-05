class GameSerializer < ActiveModel::Serializer
  attributes :id, :finished

  has_many :tiles
end
