Rails.application.routes.draw do
mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'homep#index'
  resources :artists, only: [:index, :show]
  resources :artworks, only: [:index, :show]
  resources :articles, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

