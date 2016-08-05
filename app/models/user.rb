class User < ApplicationRecord
  has_many :games

  def time_took_to_win
    self.games.map(&:time).min
  end

end
