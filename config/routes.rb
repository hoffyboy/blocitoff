Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users

  resources :users, only: [:show] do
    resources :items, only: [:create, :update, :new]
    # post 'items', to: 'items#create'
    # get 'items', to: 'items#show'
    # put 'items', to: 'items#update'
    # resources :items, only: [:create, :show, :update]
  end

  get "welcome/index"

  get "welcome/about"

  root 'welcome#index'
end
