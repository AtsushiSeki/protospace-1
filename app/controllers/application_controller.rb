class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up).push(:name, :member, :profile, :work, :avatar, :email)
    devise_parameter_sanitizer.for(:account_update).push(:name, :email, :avatar, :profile, :work, :member, :password)
  end
end
