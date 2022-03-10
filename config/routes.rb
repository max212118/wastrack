Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :chatrooms, only: [:show, :index] do
  resources :messages, only: :create
  end

  get :dashboard, to: 'pages#dashboard'
  get :economies, to: 'pages#economies'

  resource :dashboard, only: [] do
    get :container_graph, to: 'dashboard#container_graph'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.htm
    resources :containers, only: [:index, :update, :show]
    resources :roads, only: [:index, :update, :show]
    resources :road_containers, only: [:update, :show]
    resources :trucks, only: [:index, :show, :update, :create, :new, :destroy, :edit]
end
