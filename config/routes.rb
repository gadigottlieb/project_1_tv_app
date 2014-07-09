Rails.application.routes.draw do

  # User Routes
  resources :users

  # Login and Logout Sessions
  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  get '/logout' => 'sessions#destroy'


end
