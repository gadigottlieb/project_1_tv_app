Rails.application.routes.draw do
  # Home Route
  get '/' => 'home#index', as: "home"

  # User, Shows Routes
  resources :users, :shows

  get 'users/:id/favorites' => 'users#favorites', as: 'favorites'

  # Login and Logout Sessions
  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

end
