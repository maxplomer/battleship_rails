class Game < ApplicationRecord
  belongs_to :user
  has_many :tiles, -> { order(index: :desc) }, dependent: :destroy

  def time
    nil
  end

  def assign_computer_positions

  end

  private

  def random_numbers
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
