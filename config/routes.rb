Rails.application.routes.draw do

  get 'mountains/new'

  get 'mountains/show'

  get 'mountains/edit'

  get 'mountains/index'

  devise_for :users
  root 'pages#home'

  get 'pages/about'

  get 'pages/contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
