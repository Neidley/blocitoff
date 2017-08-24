Rails.application.routes.draw do
  get 'users/show'

  get 'welcome/index'

  get 'welcome/about'

  root 'users#show'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
