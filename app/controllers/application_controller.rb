class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  #Keep those not signed-in out of app and forces a sign-in before tweeting.
  before_action :authenticate_user!

  protected

  def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :name, :bio, :location, :avatar, :following])
  	devise_parameter_sanitizer.permit(:account_update, keys: [:username, :name, :bio, :location, :avatar, :following])
  end
end
