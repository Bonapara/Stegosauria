Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'
  resources :artists, only: [:index, :show]
  resources :artworks, only: [:index, :show]
  get 'sculptures', to: 'artworks#sculptures'
  get 'paintings', to: 'artworks#paintings'
  get 'photographs', to: 'artworks#photographs'
  get 'drawings', to: 'artworks#drawings'
  get 'ceramics', to: 'artworks#ceramics'
  get 'installations', to: 'artworks#installations'
  get 'editions', to: 'artworks#editions'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
