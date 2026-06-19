require "rails_helper"

RSpec.describe UserMailer, type: :mailer do
  describe "#welcome_email" do
    it "creates a welcome email" do
      user = User.create!(
        username: "kay",
        email: "kay@example.com",
        password: "password123"
      )

      mail = UserMailer.welcome_email(user)

      expect(mail.subject).to eq(Constants::WELCOME_EMAIL_SUBJECT)
      expect(mail.to).to eq([user.email])
      expect(mail.body.encoded).to include("Welcome to BlogPulse")
    end
  end
end