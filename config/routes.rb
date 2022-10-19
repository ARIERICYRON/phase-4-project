Rails.application.routes.draw do
  resources :users
  resources :suppliers
  resources :reviews
  resources :products
  resources :carts
end
