class UserMailer < ApplicationMailer
	
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.notify_comment.subject
  #
  def notify_comment(user)
    @user = user

    mail to: @user.mail, subject: "Registration "
  end
end
