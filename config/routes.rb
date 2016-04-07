Rails.application.routes.draw do

  resources :comments
  resources :ratings
  resources :clients
  root "restaurants#index"
  resources :restaurants
end
