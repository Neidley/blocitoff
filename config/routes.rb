Rails.application.routes.draw do
  resources :items, only: [:create, :new, :destroy]

  get 'welcome/index'

  get 'welcome/about'

  root 'profiles#show'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
