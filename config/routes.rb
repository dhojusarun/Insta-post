Rails.application.routes.draw do
  root "home#index"

  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  get "home/index"

  get "signup", to: "users#new", as: "signup"
  get "login",  to: "sessions#new", as: "login"
  delete "logout", to: "sessions#destroy", as: "logout"

  get "up" => "rails/health#show", as: :rails_health_check
end
