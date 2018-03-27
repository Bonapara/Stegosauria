RailsAdmin.config do |config|

  config.model 'Artwork' do
    label "Oeuvre"
    label_plural "Oeuvres"
    weight 2
  end

    config.model 'Artist' do
    label "Artiste"
    label_plural "Artistes"
    weight 3
  end

    config.model 'HomeP' do
    label "Accueil"
    label_plural "Accueil"
    weight 1
  end

    config.model 'Article' do
    weight 4
  end

    config.model 'Gallery' do
    label "Galerie"
    label_plural "Galerie"
    weight 5
  end

    config.model 'User' do
    label "Client"
    label_plural "Clients"
    weight 6
  end




  ### Popular gems integration

  ## == Devise ==
  config.authorize_with do |controller|
    redirect_to main_app.new_user_session_path unless current_user && current_user.admin
  end

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
