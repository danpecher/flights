class ApplicationMailer < ActionMailer::Base
  default from: "flights@herokuapp.com"
  layout 'mailer'
end
