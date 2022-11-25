Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # resources only index
  # resources :users do
  resources :pitches do
    resources :bookings, only: [:new, :create, :index]
  end

  get 'bookings/:id/confirmation', to: "bookings#confirmation", as: :booking_confirmation

  resources :bookings, only: [:index]
end
