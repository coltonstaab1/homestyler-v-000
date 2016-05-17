Rails.application.routes.draw do
  root 'static#home'
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  resources :users, only: [:index, :show, :edit, :update]
  resources :rooms
  resources :furnitures
end
