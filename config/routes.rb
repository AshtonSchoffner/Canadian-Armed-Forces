Rails.application.routes.draw do
  get "about/index"
  resources :equipment_types, only: %i[show]
  resources :rank_categories, only: %i[show]
  resources :environments, only: %i[show]
  resources :locations, only: %i[show]
  resources :equipment, only: %i[index show]
  resources :ranks, only: %i[index show]
  resources :operations, only: %i[index show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
