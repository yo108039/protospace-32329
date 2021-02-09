Rails.application.routes.draw do
  devise_for :users
  root to: "prototypes#index"
  resources :prototypes, only: [:new, :show, :edit, :update, :destroy ]
  resources :prototypes, only: :create do
    resources :comments, only: :create
  end
  resources :users, only: :show
end