Rails.application.routes.draw do
  resources :cart_items
  resources :carts
  resources :orders
  resources :products
  resources :shops
  resources :customers
  resources :sellers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
