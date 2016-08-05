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
      self.tiles.find_by_index(i).update(ship: true)
    end

    nil
  end

  def place_ship(index)
    self.tiles.find_by_index(index).update(ship: true)
  end

  def bomb_computer(index)
    self.tiles.find_by_index(index).update(visited: true)
  end

  def take_computer_turn
    max = 25

    loop do
      random_index = rand(max) + 25
      tile = self.tiles.find_by_index(random_index)
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
