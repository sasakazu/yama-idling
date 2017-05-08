Rails.application.routes.draw do

  get 'users/index'

  get 'users/show'

  resources :mountains

  devise_for :users

  resources :users


  root 'pages#home'

  get 'pages/about'

  get 'pages/contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
