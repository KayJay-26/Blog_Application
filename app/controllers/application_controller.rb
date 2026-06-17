class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?


def env_check
  render plain: [
    ENV["GMAIL_USERNAME"].present?,
    ENV["GMAIL_APP_PASSWORD"].present?
  ].join(" | ")
end
def users_count
  User.where(confirmed_at: nil).destroy_all
  render plain: "Deleted unconfirmed users"
end
def smtp_test
  render plain: [
    ENV["GMAIL_USERNAME"],
    ENV["GMAIL_APP_PASSWORD"].present?
  ].join(" | ")
end


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end
end