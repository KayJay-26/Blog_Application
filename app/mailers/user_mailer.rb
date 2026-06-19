class UserMailer < ApplicationMailer
  def welcome_email(user)
    @user = user

    mail(
      to: user.email,
      subject: Constants::WELCOME_EMAIL_SUBJECT
    )
  end
end