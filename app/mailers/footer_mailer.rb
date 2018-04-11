class NewsletterMailer < ActionMailer::Base
  default from: 'contact@galerieisabellelaverny.com'

  def nl_mail(mail_address)
    # message content views/newsletter_mailer/nl_mail.html.erb
    @mail_address = mail_address
    mail(
      :subject => "M'ajouter à la newsletter",
      :to  => 'contact@galerieisabellelaverny.com'
      )
  end
end
