RailsAdmin.config do |config|

  config.main_app_name = ["Galerie Isabelle Laverny", ""]

  config.model 'ShowCase' do
    field :artist do
      label "Artiste"
      :full_name
    end
    field :photo_artist do
      label "Photo Artiste"
    end
    field :artist_description do
      label "Phrase d'accroche Artiste"
    end
    field :artwork do
      label "Oeuvre"
      :full_name
    end
    field :photo_artwork do
      label "Photo oeuvre"
    end
    field :artwork_description do
      label "Phrase d'accroche Oeuvre"
    end
    field :expo do
      label "Expo"
      :full_name
    end
    field :photo_expo do
      label "Photo Expo"
    end
    field :expo_description do
      label "Phrase d'accroche Expo"
    end
    field :galerie do
      label "Galerie"
      :full_name
    end
    field :photo_galerie do
      label "Photo Galerie"
    end
    field :galerie_description do
      label "Phrase d'accroche Galerie"
    end

    label "Page d'accueil"
    label_plural "Page d'accueil"
    weight 1
  end

  config.model 'Artwork' do
    field :name do
      label "Nom"
    end
    field :artist do
      label "Artiste"
      :full_name
    end
    field :artwork_domain do
      label "Type d'oeuvre"
    end
    field :description do
      label "description"
    end
    field :height do
      label "Hauteur"
    end
    field :width do
      label "Largeur"
    end
    field :depth do
      label "Profondeur"
    end
    field :photo do
      label "Photo de l'oeuvre"
    end
    field :price do
      label "Fourchette de prix"
    end
    field :number do
      label "Série"
    end
    field :year do
      label "Année de conception"
    end
    field :priority do
      label "Mettre l'oeuvre en avant"
    end
    field :sold do
      label "Cocher si vendue"
    end

    label "Oeuvre"
    label_plural "Oeuvres"
    weight 2
  end

  config.model 'Artist' do

    field :first_name do
      label "Prénom"
    end

    field :last_name do
      label "Nom de famille"
    end

    field :biography do
      label "Biographie"
    end

    field :speciality1 do
      label "Specialité principale"
    end

    field :speciality2 do
      label "Specialité secondaire"
    end

    field :photo do
      label "Photo de l'artiste"
    end

    label "Artiste"
    label_plural "Artistes"
    weight 3
    object_label_method do
      :full_name
    end
  end

  config.model 'Expo' do
    field :name do
      label "Nom de l'expo"
    end
    field :expo_type do
      label "Type d'expo"
    end
    field :artistes do
      label "Artiste(s) exposants"
    end
    field :location do
      label "Adresse"
    end
    field :descriptions_expo do
      label "Description de l'expo"
    end
    field :vernissage_date do
      label "Date du vernissage"
    end
    field :date_from do
      label "Du"
    end
    field :date_to do
      label "Au"
    end
    field :vernissage_hours_from do
      label "Heure début vernissage"
    end
    field :vernissage_hours_to do
      label "Heure fin vernissage"
    end
    field :photo do
      label "Photo"
    end

    label "Expo"
    label_plural "Expos"
    weight 4
  end

    config.model 'Actu' do
    field :title_1 do
      label "Titre"
    end
    field :title_2 do
      label "Phrase d'accroche"
    end
    field :actu_type do
      label "type d'actu"
    end
    field :dates do
      label "Date(s) de l'évènement"
    end
    field :location do
      label "Adresse"
    end
    field :description do
      label "Description"
    end
    field :photo do
      label "photo"
    end


    label "Actu"
    label_plural "Actus"
    weight 5
  end

  config.model 'Galerie' do

    field :name do
      label "Titre de la page"
    end
    field :address do
      label "Adresse"
    end
    field :opening_hours do
      label "Heures d'ouverture"
    end
    field :phone do
      label "Numéro de tel"
    end
    field :email do
      label "email"
    end
    field :photo do
      label "Photo de la galerie"
    end
    field :title_1 do
      label "Titre galerie"
    end
    field :description_1 do
      label "Description galerie"
    end
    field :title_2 do
      label "Titre Bio"
    end
    field :description_2 do
      label "Bio"
    end

    label "La Galerie"
    label_plural "La Galerie"
    weight 6
  end

  config.model 'User' do
    label "Users"
    label_plural "Users"
    weight 7
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
