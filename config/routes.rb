Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # resources only index
  # resources :users do
  resources :pitches do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index]
end
