Rails.application.routes.draw do
  # Home Route
  get '/' => 'home#index', as: "home"

  # User, Shows Routes
  resources :users, :shows, :favorites, :actors

  # get 'users/:id/favorites' => 'users#favorites', as: 'favorites'

  # search Themoviedb api
  get 'search' => 'shows#search', as: 'show_search_path'
  post 'add_new' => 'shows#add_new', as: 'new_show_by_id'

  # Login and Logout Sessions
  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

end
