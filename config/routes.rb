Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :chatrooms, only: [:show, :index] do
  resources :messages, only: :create
  end
  get :dashboard, to: 'pages#dashboard'
  resources :roads, only: [:update, :show]
  resources :road_containers, only: [:update]
  resources :containers, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
