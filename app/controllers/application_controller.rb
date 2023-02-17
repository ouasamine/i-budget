class ApplicationController < ActionController::Base
  # before_action :require_login
  before_action :configure_permitted_parameters, if: :devise_controller?

  def require_login
    return if user_signed_in?

    redirect_to root_path
  end

  def after_sign_in_path_for(_user)
    groups_path
  end

  def after_sign_out_path_for(_user)
    root_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
