Rails.application.routes.draw do
  get 'users/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users

  get "welcome/index"

  get "welcome/about"

  root 'welcome#index'


end
