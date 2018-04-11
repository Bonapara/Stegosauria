Rails.application.routes.draw do
mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'showcases#index'
  resources :artists, only: [:index, :show]
  resources :artworks, only: [:index, :show]
  resources :galeries, only: [:index]
  resources :showcases, only: [:index]
  resources :expos, only: [:index]
  get 'currents', to: 'expos#currents'
  get 'futures', to: 'expos#futures'
  get 'pasts', to: 'expos#pasts'
  post 'newsletter_new_email', to: 'application#newsletter_new_email'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

