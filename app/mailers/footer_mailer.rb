class NewsletterMailer < ActionMailer::Base
  default from: 'contact@galerieisabellelaverny.com'

  def capart(mail_address)
    @mail_address = mail_address
    mail(
      :subject => @mail_address,
      :to  => 'contact@galerieisabellelaverny.com'
      )
  end
end
