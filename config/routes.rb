Rails.application.routes.draw do
  get 'login', to: 'sessions#new', as: 'login'
  post 'login', to: 'sessions#create', as: 'authenticate'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :rooms
  resources :users, except: [:index]
  resources :sessions, only: [:new, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'rooms#index'
end
