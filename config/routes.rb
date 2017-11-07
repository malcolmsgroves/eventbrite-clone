Rails.application.routes.draw do

  root 'events#index'
  resources :users, only: [:new, :create, :show, :index]
  resources :events, only: [:new, :create, :index, :show]

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
