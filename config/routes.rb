Rails.application.routes.draw do
  resources :users, only: [:index, :show, :create]
  resources :suppliers, only: [:index, :show]
  resources :reviews, only: [:index, :show, :create]
  resources :products, only: [:index, :show, :create]
  resources :carts, only: [:show, :destroy, :index]
end
