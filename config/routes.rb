Rails.application.routes.draw do
  # nested routes
  resources :users, only: [:show] do
    resources :items, only: [:show, :index]
  end 

  resources :users, only: [:create] do 
    resources :items, only: [:create]
  end 

  resources :items, only: [:index]
  resources :users, only: [:show]
end
