class NewsletterMailer < ActionMailer::Base
  default from: 'contact@galerieisabellelaverny.com'
  layout "capart"
  def capart
    mail(
      :subject => 'Hello from Postmark',
      :to  => 'contact@galerieisabellelaverny.com',
      :html_body => '<strong>Hello</strong> dear Postmark user.',
      :track_opens => 'true')
  end
end
