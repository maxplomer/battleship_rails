class UsersController < ApplicationController

  def create
    auth0_info = get_auth0_info

    existing_user = User.find_by_auth0id(auth0_info[0])

    if !!existing_user
      render json: existing_user
    else
      user = User.new(
        auth0id: auth0_info[0],
        email: auth0_info[1]
      )

      if user.save
        render json: user, status: :created
      else
        render json: user.errors, status: :unprocessable_entity
      end
    end

  end

  def index
    users = User.all
    users.sort! { |a,b| a.time_took_to_win <=> b.time_took_to_win }
  end

end
