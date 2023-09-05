class ApplicationController < ActionController::API
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

  before_action :authenticate_user!
  before_action :set_current_user
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end
  def set_current_user
    Ability.new(current_user)
  end
end
