Rails.application.routes.draw do
  get 'welcome/index'
  root 'films#index'

  resources :films

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
