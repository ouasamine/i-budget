class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(_user)
    new_user_session_path
  end
end
