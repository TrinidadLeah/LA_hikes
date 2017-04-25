Rails.application.routes.draw do
  root 'hikes#index'
  get '/hikes', to: 'hikes#index'
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
end
