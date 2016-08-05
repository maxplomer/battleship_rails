class GameSerializer < ActiveModel::Serializer
  attributes :id#, :my_tiles

  has_many :tiles

  # def my_tiles
  #   object.tiles[25..-1]
  # end
end
