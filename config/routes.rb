Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  resources :users, only: [:index, :show, :edit, :update]
  resources :rooms
  resources :furnitures
end
