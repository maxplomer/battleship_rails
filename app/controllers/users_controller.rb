class UsersController < ApplicationController
  serialization_scope nil
  
  def create
    auth0id = get_auth0id

    existing_user = User.find_by_auth0id(auth0id)

    if !!existing_user
      render json: existing_user
    else
      user = User.new(
        auth0id: auth0id,
        email: params[:email]
      )

      if user.save
        render json: user, status: :created
      else
        render json: user.errors, status: :unprocessable_entity
      end
    end

  end

  def index
    users = User.all.select { |i| i.time_took_to_win != nil }
    users.sort! { |a,b| a.time_took_to_win <=> b.time_took_to_win }

    render json: users
  end

end
