Rails.application.routes.draw do
  # Home Route

  # User, Shows Routes
  resources :users, :shows, :favorites, :actors

  # get 'users/:id/favorites' => 'users#favorites', as: 'favorites'

  # search Themoviedb api for tv shows
  get 'search' => 'shows#search', as: "shows_search_path"
  post 'add_new_shows' => 'shows#add_new'

  # search Themoviedb api for actors by shows
  get 'search' => 'actors#search', as: "actors_search_path"
  post "add_new_actors" => "actors#add_new"
  # Login and Logout Sessions

  get '/' => 'sessions#new', as: :login
  post '/sessions' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

end
