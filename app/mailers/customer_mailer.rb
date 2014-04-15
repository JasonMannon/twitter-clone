class CustomerMailer < ActionMailer::Base
  default from: "replyhere@xmen.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.customer_mailer.signup_confirmation.subject
  #
  def signup_confirmation(user)
    @greeting = "Ahoy"
    @user = user
    mail to: @user.email, subject: "Best Sign Up Ever."
  end
end
