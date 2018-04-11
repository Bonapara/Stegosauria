class MailerController < ApplicationController
  skip_before_action :authenticate_user!

  def newsletter_new_email
    NewsletterMailer.nl_mail(params[:query]).deliver_now
  end

  def artwork_form_email
    ArtworkMailer.artwork_mail(params[:name], params[:mail], params[:query], params[:artwork_name], params[:artwork_id], params[:artist_fn], params[:artist_ln]).deliver_now
  end
end
