class RegistrationsController < ApplicationController
  respond_to :json

  def index
    @all_users = User.all
      # Convert the courses data into JSON format
    all_users_json = @all_users_json.to_json

    # Send the JSON response to the client
    render json: all_users_json
  end

  def create
    build_resource(sign_up_params)

    if resource.save
      render json: resource
    else
      render json: { errors: resource.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation, :username)
  end
end
