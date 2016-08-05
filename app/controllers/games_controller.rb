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
    game.place_ship(params[:index].to_i)
    render json: game
  end

  def bomb_computer
    game = current_user.games.find(params[:id])
    game_over = game.bomb_computer(params[:index].to_i)
    unless game_over
      game.take_computer_turn
    end
    #check if game over in these methods?
    #send up an attribute in game if over or not, already have finished
    render json: game
  end

  def destroy
    game = current_user.games.find(params[:id])
    game.destroy

    render json: game
  end

end
