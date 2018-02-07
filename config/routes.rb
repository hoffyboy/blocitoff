Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users

  resources :users, only: [:index, :show] do
    resources :items, only: [:create, :update, :new, :destroy]
  end

  get "welcome/index"

  get "welcome/about"

  root 'welcome#index'
end
