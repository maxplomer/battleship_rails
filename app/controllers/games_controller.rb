class GamesController < ApplicationController

  def create
    game = current_user.games.create

    50.times do |i|
      game.tiles.create(index: i)
    end

    game.assign_computer_positions

    render json: game, status: :created
  end

  def place_ship
    game = current_user.games.find(params[:id])
    p "PLACE SHIP"
    p params
    p "PLACE SHIP"
    render json: {hello: 'world'}

  end

  def destroy
    game = current_user.games.find(params[:id])
    game.destroy

    render json: game
  end

end
