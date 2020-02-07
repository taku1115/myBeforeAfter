Rails.application.routes.draw do

  devise_for :users
  get 'home/index'
  root to: "home#index"
  resources :contents, only: [:index, :new, :create, :destroy] 
  resources :books, only: [:index, :new, :create, :destroy] 
end
