class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def users_count
  User.where(confirmed_at: nil).destroy_all
  render plain: "Deleted unconfirmed users"
  end
  def cleanup_users
  User.destroy_all
  render plain: "All users deleted"
  end


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end
end