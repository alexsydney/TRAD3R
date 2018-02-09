Rails.application.routes.draw do
  get 'users/index'

  get 'users/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # setup root for webpage
  root to: 'pages#home'

  # setup for login routes
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  # setup for guest login
  get '/login'  => 'session#guest'

  # setup for users
  resources :users

  # setup for profile
  get '/profile' => 'users#profile'

  # setup for is_admin
  get '/admin' => 'users#admin'

  # setup for avatars
  resources :avatars

  # setup for search avatar name
  post '/avatars/search' => 'avatars#search'

  # setup for phrases
  resources :phrases


end
