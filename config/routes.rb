Rails.application.routes.draw do
  root "items#index"
  resources :items, only: [:index, :new, :create, :show, :destroy]
  resources :categories, only: [:show]
end
