Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'
  resources :artists, only: [:index, :show]
  resources :artworks, only: [:index, :show]
  # namespace :admin do
  #   resources :artists
  #   resources :artworks
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
