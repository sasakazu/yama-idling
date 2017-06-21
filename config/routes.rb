Rails.application.routes.draw do

  root 'pages#home'


  devise_for :users

  resources :mountains

  resources :users

  resources :messages



  post 'mountain/pay1' => 'mountains#pay1'
  post 'mountain/pay2' => 'mountains#pay3'
  post 'mountain/pay3' => 'mountains#pay5'
  post 'mountain/pay4' => 'mountains#pay7'
  post 'mountain/pay5' => 'mountains#pay10'
  post 'mountain/pay1' => 'mountains#pay15'
  post 'mountain/pay2' => 'mountains#pay20'
  post 'mountain/pay3' => 'mountains#pay25'
  post 'mountain/pay4' => 'mountains#pay30'
  post 'mountain/pay5' => 'mountains#pay35'
  post 'mountain/pay3' => 'mountains#pay40'
  post 'mountain/pay4' => 'mountains#pay45'
  post 'mountain/pay5' => 'mountains#pay50'


  get 'pages/about'
  get 'pages/contact'

  mount ActionCable.server => '/cable'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
