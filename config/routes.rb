Rails.application.routes.draw do
  resources :users
  resources :suppliers
  resources :reviews
  resources :products
  resources :carts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
