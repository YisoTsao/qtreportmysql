class ContactMailer < ApplicationMailer
default from: "'Gary'from@example.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.notify_comment.subject
  #
  def notify_comment(user, contact)
    @contact = contact

    mail to: @contact.email, subject: "Registration "
  end
end
