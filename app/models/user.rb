class User < ApplicationRecord
  has_many :games

  def time_took_to_win
    self.games.where(finished: true, player_won: true).map(&:time).min
  end

end
