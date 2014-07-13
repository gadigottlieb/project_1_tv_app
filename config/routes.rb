Rails.application.routes.draw do

  # User, Shows Routes
  resources :shows do
    get 'search', on: :collection # Searches The Movie Db website
    post 'add_new' => 'shows#add_new', as: 'new_show_by_id'
  end

  resources :actors do
    get 'search', on: :collection # Searches The Movie Db website
  end

  resources :users do
    post 'favorite', on: :member
  end

  resources :favorites

  # get 'users/:id/favorites' => 'users#favorites', as: 'favorites'

  # Login and Logout Sessions

  get '/' => 'sessions#new', as: :login
  post '/sessions' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

end
