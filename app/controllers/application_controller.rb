class ApplicationController < ActionController::Base
  before_action :configure_permitted_params, if: :devise_controller?

  protected

  def configure_permitted_params
    added_params = [:name, :username]
    devise_parameter_sanitizer.permit(:sign_up, keys: added_params)
    devise_parameter_sanitizer.permit(:account_update, keys: added_params)
  end
end
