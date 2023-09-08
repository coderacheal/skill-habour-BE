class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json

  private

  def respond_with(resource, _options = {})
    if resource.persisted?
      render json: {
        status: { code: 200, message: 'Signed up successfully!', data: resource }
      }, status: :ok
    else
      render json: {
        status: { message: 'User could not be created successfully!', errors: resource.errors.full_messages }
      }, status: :unprocessable_entity
    end
  end

  def sign_up_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

  def after_sign_up_path_for(_resource)
    if sign_up_params[:email] == 'admin@skill-habour.com'
      # Set the role to 'Admin'
      current_user.update(role: 'Admin')
    end

    # Return the path you want to redirect to after registration
    '/courses' # Change this to the desired path
  end
end
