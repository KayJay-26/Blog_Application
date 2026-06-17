class UserMailer < ApplicationMailer
  def test_email
    mail(
      to: "khrithikjupalli@gmail.com",
      subject: "BlogPulse SMTP Test",
      body: "If you received this, SMTP works."
    )
  end
end