Rails.application.routes.draw do
  resources :cart_items, only: [:show, :index, :update, :destroy]
  resources :carts, only: [:show, :index, :update, :destroy]
  resources :orders, only: [:show, :index, :update, :destroy]
  resources :products, only: [:show, :index, :update, :destroy]
  resources :shops, only: [:show, :index, :update, :destroy]
  resources :customers, only: [:show, :index, :create, :update, :destroy]
  resources :sellers, only: [:show, :index, :create,  :update, :destroy]
  post 'login', to: 'sessions#create'
  post 'signup', to: 'customers#create'
  delete '/logout', to: 'sessions#destroy'
  get '/customers', to: 'customers#index'
  delete '/customers', to: 'customers#destroy'


  post '/customers', to: 'customers#create'
  post '/sellers', to: 'sellers#create'
  delete '/sellers', to: 'sellers#destroy'

  resources :categories, only: [:show, :index, :update, :destroy]
  resources :variations, only: [:show, :index, :update, :destroy]

  # Additional routes for search and filter actions
  get '/products/search', to: 'products#search'
  get '/products/filter', to: 'products#filter'
end
