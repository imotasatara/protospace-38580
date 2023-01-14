class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters,  :authenticate_user!, only: [:new, :edit, :destroy], if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile, :occupation, :position])
  end
end