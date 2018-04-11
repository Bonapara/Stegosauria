class ArtworkMailer < ActionMailer::Base
  default from: 'contact@galerieisabellelaverny.com'

  def artwork_mail(fullname, email, message_content, artwork_name, artwork_id, artist_fn, artist_ln)
    # message content views/newsletter_mailer/nl_mail.html.erb
    @fullname = fullname
    @email = email
    @message_content = message_content
    @artwork_name = artwork_name
    @artwork_id = artwork_id
    @artist_fn = artist_fn
    @artist_ln = artist_ln
    mail(
      :subject => "Personne interéssée par #{@artwork_name} de #{@artist_fn} #{@artist_ln}",
      :to  => 'contact@galerieisabellelaverny.com'
      )
  end
end
