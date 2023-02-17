class ApplicationController < ActionController::Base
  # before_action :require_login
  before_action :configure_permitted_parameters, if: :devise_controller?

  def require_login
    unless user_signed_in?
      redirect_to root_path
    end
  end

  def after_sign_in_path_for(user)
    groups_path
  end

  def after_sign_out_path_for(user)
    root_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
