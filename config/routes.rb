Rails.application.routes.draw do
  devise_for :users
  root "items#index"
  resources :items, only: [:index, :new, :create, :show, :destroy]
  resources :categories, only: [:show]
end
