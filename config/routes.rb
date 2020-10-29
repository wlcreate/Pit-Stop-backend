Rails.application.routes.draw do
  # resources :reflections
  # resources :places
  # resources :trips
  # resources :users
  # resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # users
  post '/users/login', to: "users#login"
  get '/users/keep_logged_in', to: "users#keep_logged_in"
  post '/users', to: "users#create"

  # trips
  post '/trips', to: "trips#create"

  # places
  post '/places', to: "places#create"
end
