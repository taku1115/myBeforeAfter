Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  resources :contents, only: [:index, :new, :create, :destroy] 
  resources :books, only: [:index, :new, :create, :destroy] 
end
