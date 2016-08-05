class Game < ApplicationRecord
  belongs_to :user
  has_many :tiles, -> { order(index: :desc) }

  def time
    nil
  end
end
