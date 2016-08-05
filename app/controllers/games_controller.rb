class GamesController < ApplicationController

  def create
    game = current_user.games.create

    50.times do |i|
      game.tiles.create(index: i)
    end

    game.assign_computer_positions

    render json: game, status: :created
  end

  def destroy
    id = params[:id]

    game = current_user.games.find(id)
    game.destroy

    render json: game
  end

end
