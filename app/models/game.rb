class Game < ApplicationRecord
  belongs_to :user
  has_many :tiles, -> { order(index: :asc) }, dependent: :destroy

  def time
    nil
  end

  def assign_computer_positions
    positions = Game.random_numbers
    
    positions.each do |i|
      self.tiles[i].update(ship: true)
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
