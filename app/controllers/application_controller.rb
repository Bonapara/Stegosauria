class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def after_sign_in_path_for(resource_or_scope)
    rails_admin_path
  end

  def newsletter_new_email
    NewsletterMailer.nl_mail(params[:query]).deliver_now
  end

  def artwork_form_email
    ArtworkMailer.artwork_mail(params[:name], params[:mail], params[:query], params[:artwork_name], params[:artwork_id], params[:artist_fn], params[:artist_ln]).deliver_now
  end
end
