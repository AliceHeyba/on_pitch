Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :pitches do
    resources :bookings, only: [:new, :create, :index]
  end
  get 'bookings/:id/confirmation', to: "bookings#confirmation", as: :booking_confirmation
end
