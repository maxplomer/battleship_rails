class Game < ApplicationRecord
  belongs_to :user
  has_many :tiles, -> { order(index: :desc) }, dependent: :destroy

  def time
    nil
  end
end
