class TileSerializer < ActiveModel::Serializer
  attributes :id, :visited, :ship

  def ship
    if object.index > 24
      object.ship
    else
      if object.visited
        object.ship
      else
        false
      end
    end
  end
end
