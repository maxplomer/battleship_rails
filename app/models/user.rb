class User < ApplicationRecord
  has_many :games

  def time_took_to_win
    self.games.where(finished: true).map(&:time).min
    #issue here in that might need won attribute instead of finished
  end

end
