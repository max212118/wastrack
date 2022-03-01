Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get :dashboard, to: 'pages#dashboard'
  resources :roads, only: [:update, :show]
  resources :road_containers, only: [:update]
end
