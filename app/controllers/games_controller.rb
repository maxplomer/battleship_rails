class GamesController < ApplicationController

  def create
    game = current_user.games.new

    if game.save
      render json: game, status: :created
    else
      render json: game.errors, status: :unprocessable_entity
    end
  end

  def destroy
    id = params[:id]

    game = current_user.games.find(id)
    game.destroy

    render json: game
  end

end
