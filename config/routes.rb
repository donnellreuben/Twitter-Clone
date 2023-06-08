Rails.application.routes.draw do
  devise_for :users

  root "home#index"

  resources :tweets, only: :create

  get "dashboard" => "dashboard#index"
  get "search" => "search#index"
  
  resources :usernames, only: [:new, :update]
end
