class UsersController < ApplicationController
  def username
    # Get the current user's username
    username = current_user.username

    render json: { username: }
  end
end
