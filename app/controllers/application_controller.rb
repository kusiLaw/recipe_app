class ApplicationController < ActionController::Base
  # for sign up
  # protect_from_forgery with: :exceptions

  before_action :update_allowed_parameters, if: :devise_controller?

  protected

  def update_allowed_parameters
     devise_parameter_sanitizer.permit(:sign_up) { |u|
       u.permit(:name, :email, :password, :password_confirmation)
     }
     devise_parameter_sanitizer.permit(:account_update) { |u| 
      u.permit(:name, :email, :password, :password_confirmation, :current_password)
     }

  end

end
