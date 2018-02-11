Rails.application.routes.draw do
  get 'users/index'

  get 'users/show'

  # get 'phrases#purchases', to 'phrases#purchases'

  resources :phrases


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
