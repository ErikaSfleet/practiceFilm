Rails.application.routes.draw do
  devise_for :users
  # get 'welcome/index'
  root 'welcome#index'


  resources :favorites
  resources :films
  #get 'my_favorites', to: 'users#my_favorites'
  post 'index', to: 'favorites#index'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
