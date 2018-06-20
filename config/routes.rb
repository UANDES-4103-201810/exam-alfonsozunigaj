Rails.application.routes.draw do
  resources :pizza_carts
  resources :carts
  resources :pizza_in_orders
  resources :delivery_infos
  resources :orders
  devise_for :customers, :controllers => { registrations: 'registrations' }
  resources :pizzas
  resources :ingredient_recipes
  resources :recipes
  resources :crusts
  resources :ingredients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'application#index'
  get 'my_cart', to: 'carts#show'
  post 'add_to_cart', to: 'pizzas#create', as: 'add_to_cart'
end
