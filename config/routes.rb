Rails.application.routes.draw do
  root 'home#index'

  get '/signin', to: 'sessions#new'
  get '/signout', to: 'sessions#destroy'
  post '/sessions/create', to: 'sessions#create'
  resources :users
  resources :attractions
end
