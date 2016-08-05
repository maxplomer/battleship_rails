class Game < ApplicationRecord
  belongs_to :user
  has_many :tiles, -> { order(index: :asc) }, dependent: :destroy

  def time
    game.game_ended - game.created_at
  end

  def assign_computer_positions
    positions = Game.random_numbers

    positions.each do |i|
      self.tiles.find_by_index(i).update(ship: true)
    end

    nil
  end

  def place_ship(index)
    self.tiles.find_by_index(index + 25).update(ship: true)
  end

  def bomb_computer(index)
    self.tiles.find_by_index(index).update(visited: true)

    player_won?
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

    computer_won?

    nil
  end

  private

  def player_won?
    if self.tiles.where("index < ?", 25).where(visited: true, ship: true).length == 10
      self.update(finished: true, player_won: true, game_ended: Time.now)
      true
    else
      false
    end
  end

  def computer_won?


    nil
  end

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
