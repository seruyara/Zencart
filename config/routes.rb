Rails.application.routes.draw do
  resources :cart_items, only: [:show, :index, :update, :destroy]
  resources :carts, only: [:show, :index, :update, :destroy]
  resources :orders, only: [:show, :index, :update, :destroy]
  resources :products, only: [:show, :index, :update, :destroy]
  resources :shops, only: [:show, :index, :update, :destroy]
  resources :customers, only: [:show, :index, :update, :destroy]
  resources :sellers, only: [:show, :index, :update, :destroy]
  
end
