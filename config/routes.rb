Rails.application.routes.draw do
  # resources :reflections
  # resources :places
  # resources :trips
  # resources :users
  # resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # users
  post '/users/login', to: "users#login" # find the user & log them in
  get '/users/keep_logged_in', to: "users#keep_logged_in" # check if user never logged out
  post '/users', to: "users#create" # add a new user

  # trips
  post '/trips', to: "trips#create" # add a new trip
  delete '/trips/:id', to: "trips#destroy" # deletes a trip
  patch '/trips/:id', to: "trips#update" # updates a trip

  # places
  post '/places', to: "places#create" # add a new place
  delete '/places/:id', to: "places#destroy" # deletes a place
  patch '/places/:id', to: "places#update" # updates a place

  # reflections
  post '/reflections', to: "reflections#create" # add a new reflection
  delete '/reflections/:id', to: "reflections#destroy" # destroys a reflection
  patch '/reflections/:id', to: "reflections#update" # updates a reflection

  # categories
  get '/categories', to: "categories#index" # get all the categories

end
