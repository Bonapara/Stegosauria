class NewsletterMailer < ActionMailer::Base
  def message
    mail(
      :subject => 'Hello from Postmark',
      :to  => 'contact@galerieisabellelaverny.com',
      :from => 'contact@galerieisabellelaverny.com',
      :html_body => '<strong>Hello</strong> dear Postmark user.',
      :track_opens => 'true')
  end
end
