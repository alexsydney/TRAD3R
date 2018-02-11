Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # setup root for webpage
  root to: 'pages#home'

  # setup About page
  get '/pages/about' => 'pages#about'

  #setup for Dashboard
  get 'dashboard' =>  'dashboard#index'


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

  # setup for search avatar name
  get '/avatars/search' => 'avatars#search'

  # setup for avatars
  resources :avatars, except: [:edit] do
    member do
      get 'listing'
      get 'price'
      get 'description'
      get 'your_profit'

    end

    # setup for photos
    # resources :photos, only: [:create, :destroy]




  end

  # setup for phrases
  # resources :phrases
  
  # setup for your_phrases_path
  get 'phrases/your_phrases' =>  'phrases#your_phrases'


  # setup for phrases
  resources :phrases

end
