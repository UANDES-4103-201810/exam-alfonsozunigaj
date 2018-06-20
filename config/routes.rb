Rails.application.routes.draw do
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
end
