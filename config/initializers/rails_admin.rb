RailsAdmin.config do |config|

  config.main_app_name = ["Galerie Isabelle Laverny", ""]


  config.model 'Artwork' do
    list do
      field :name
      field :photo
      field :description
    end
    label "Oeuvre"
    label_plural "Oeuvres"
    weight 2
  end

  config.model 'Artist' do
    label "Artiste"
    label_plural "Artistes"
    weight 3
    object_label_method do
      :full_name
    end
  end

  config.model 'ShowCase' do
    label "Page d'accueil"
    label_plural "Page d'accueil"
    weight 1
  end

  # config.model 'Expo' do
  #   label "Expos et actus"
  #   label_plural "Expos et actus"
  #   weight 4
  # end

  config.model 'Gallery' do
    label "La galerie"
    label_plural "La galerie"
    weight 5
    object_label_method do
      :name_gallery
    end
  end

  config.model 'User' do
    label "Users"
    label_plural "Users"
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
