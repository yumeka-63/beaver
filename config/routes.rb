Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, :only => [:show, :index]
  resources :messages, :only => [:create]
  resources :rooms, :only => [:create, :show]
  resources :tops
  resources :posts do
    
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create]
  end
  root 'tops#index'
end
