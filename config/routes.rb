Rails.application.routes.draw do
  devise_for :users

  root "home#index"

  resources :tweets, only: :create

  get "dashboard" => "dashboard#index"
  
  resources :usernames, only: [:new, :update]
end
