Rails.application.routes.draw do

  #
  # resources :user, :shallow => true do
  #   resources :users
  # end

  # get '/mountains/:user_id' => 'users#show'

  resources :mountains

  devise_for :users

  resources :users

  # get 'user/:user_id', to: 'user#show'

  post 'mountain/pay' => 'mountains#pay'


  #
  # resources :user do
  #   resources :mountain
  # end


  root 'pages#home'

  get 'pages/about'

  get 'pages/contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
