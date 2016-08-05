class Game < ApplicationRecord
  belongs_to :user

  def time
    nil
  end
end
