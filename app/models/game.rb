class Game < ApplicationRecord
  belongs_to :user
  has_many :tiles, -> { order(index: :asc) }, dependent: :destroy

  def time
    nil
  end

  def game_over?
    #if player wins assign a finished time
    #else just leave nil and set finished to true
  end

  def assign_computer_positions
    positions = Game.random_numbers

    positions.each do |i|
      self.tiles[i].update(ship: true)
    end

    nil
  end

  def place_ship(index)
    self.tiles[index + 25].update(ship: true)
  end

  def bomb_computer(index)
    self.tiles[index].update(visited: true)
  end

  def take_computer_turn
    max = 25
    random_index = rand(max)

    loop do
      tile = self.tiles[random_index + 25]
      unless tile.visited
        tile.update(visited: true)
        return
      end
    end

    nil
  end

  private

  def Game.random_numbers
    require 'set'

    n = 10
    max = 25
    randoms = Set.new

    loop do
      randoms << rand(max)
      return randoms.to_a if randoms.size >= n
    end

    randoms
  end

end
