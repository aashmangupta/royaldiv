class ApplicationController < ActionController::Base
  require 'pry'
  before_action :configure_permitted_params, if: :devise_controller?

  protected

  def configure_permitted_params
    devise_parameter_sanitizer.permit(:update, keys: %i[first_name last_name url])
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[first_name last_name])
  end
end
