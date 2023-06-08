Rails.application.routes.draw do
  devise_for :users

  root "home#index"

  resources :tweets, only: :create

  get "dashboard" => "dashboard#index"
  get "search" => "search#index"
  get "notifications" => "notifications#index"
  get "messages" => "messages#index"
  get "profile" => "profile#index"
  get "tweets" => "tweets#index"
  
  resources :usernames, only: [:new, :update]
end
