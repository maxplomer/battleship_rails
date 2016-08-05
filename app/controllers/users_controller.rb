class UsersController < ApplicationController


  def create

  end


  def index
    users = User.all
    users.sort! { |a,b| a.time_took_to_win <=> b.time_took_to_win }
  end

end
