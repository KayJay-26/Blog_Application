class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?


def env_check
  render plain: [
    ENV["GMAIL_USERNAME"].present?,
    ENV["GMAIL_APP_PASSWORD"].present?
  ].join(" | ")
end
def users_count
  render plain: User.pluck(:email).join("\n")
end


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end
end