class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    registration_params = [ :role_id, :email, :password, :password_confirmation ]
    devise_parameter_sanitizer.permit(:sign_up, keys: [:role_id, :email, :password, :password_confirmation])
  end
end
