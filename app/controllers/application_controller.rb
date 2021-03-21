class ApplicationController < ActionController::Base
  before_action :authenticate_user!,except:[:top, :about]
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    user_path(current_user.id)
  end
  def after_sign_up_path_for(resource)
    user_path(current_user.id)
  end
  def after_update_path_for(resource)
    user_path(current_user.id)
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

  # private
  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_up,keys:[:eamil])
  # end
end