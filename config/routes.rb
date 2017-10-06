Rails.application.routes.draw do
  devise_for :users
  # get 'welcome/index'
  root 'welcome#index'

  resources :favorites, only: [:create]

  get 'my_favorites', to: 'favorites#my_favorites'
  resources :films

  #get 'my_favorites', to: 'users#my_favorites'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
