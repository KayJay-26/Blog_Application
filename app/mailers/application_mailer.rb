class ApplicationMailer < ActionMailer::Base
  default from: Constants::MAILER_FROM
  layout "mailer"
end