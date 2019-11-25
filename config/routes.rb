Rails.application.routes.draw do
  root 'home#index'

  get 'contact', to: 'contact#index'
  get 'about', to: 'about#index'
  get 'home/index'

  resources :radios
  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
